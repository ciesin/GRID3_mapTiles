"""
qgis_normalize.py — Convert a MapLibre GL style to a QGIS-compatible subset.

Usage:
    python qgis_normalize.py                          # defaults shown below
    python qgis_normalize.py --in path/in.json --out path/out.json

Default paths (relative to repo root):
    --in   martin/styles/style.json
    --out  martin/styles/style-qgis.json

Fixes applied (keyed to QGIS VT renderer limitations):
  1.  Drop fill-extrusion layers (unsupported layer type)
  2.  Flatten step/interpolate line-opacity / fill-opacity / text-opacity
        expressions → static value (fixes "opacity already defined" warnings)
  3.  Flatten step line-color expressions → last stop colour
  4.  Flatten step+literal line-dasharray → static [dash, gap] array
  5.  Flatten expression line-gap-width → static value
  6.  Fix nested interpolate(zoom, match(…)) fill/line-color → simple match
  7.  Convert property-based interpolate (e.g. nga-settlement-blocks) → step
  8.  Simplify landuse_park fill-color case+in+literal → static colour
  9.  Simplify text-field: step+concat → ["get", prop]; multilingual
        case/format → ["get", "name"]
  10. Simplify text-font: case expressions → ["Noto Sans Regular"]
  11. Remove icon-image / icon-size / icon-optional (sprites unavailable)
  12. Flatten text-variable-anchor step expression → static anchor list
  13. Remove symbol-sort-key with math sub-expressions
  14. Flatten text-size / text-padding / symbol-spacing / text-max-width /
        text-letter-spacing / text-radial-offset if their stop values are
        sub-expressions
  15. Normalise filters: new-style ["in", ["get", prop], ["literal", vals]]
        → old-style ["in", prop, v1, v2, …]; drop unsupported sub-expressions
        ([">=", ["zoom"], …], ["length", …]) to avoid "unsupported expression"
"""

import argparse
import copy
import json
import re
from pathlib import Path

HERE = Path(__file__).parent
REPO_ROOT = HERE.parent.parent
STYLE_IN_DEFAULT = REPO_ROOT / "martin" / "styles" / "style.json"
STYLE_OUT_DEFAULT = REPO_ROOT / "martin" / "styles" / "style-qgis.json"


# ── expression helpers ────────────────────────────────────────────────────────

def is_expr(val):
    return isinstance(val, list)


def color_has_alpha(val):
    """True when a colour string encodes alpha < 100 %."""
    if not isinstance(val, str):
        return False
    if re.match(r"^#[0-9a-fA-F]{8}$", val):
        return int(val[7:9], 16) < 255
    m = re.match(r"rgba\s*\([\d\s.,]+,\s*([\d.]+)\s*\)", val)
    return bool(m) and float(m.group(1)) < 1.0


def any_alpha(val):
    """Recursively check whether any colour within an expression has alpha."""
    if isinstance(val, str):
        return color_has_alpha(val)
    if isinstance(val, list):
        return any(any_alpha(v) for v in val)
    return False


def _stop_values(expr):
    """Return the stop *values* (not thresholds) from a step or interpolate."""
    if not is_expr(expr):
        return []
    if expr[0] == "step":
        # ["step", input, default, t1, v1, t2, v2, …]
        default = expr[2] if len(expr) > 2 else None
        vals = ([default] if default is not None else []) + [
            expr[i] for i in range(4, len(expr), 2)
        ]
        return vals
    if expr[0] == "interpolate":
        # ["interpolate", interp, input, z0, v0, z1, v1, …]
        return [expr[i] for i in range(4, len(expr), 2)]
    return []


def flatten_stops(expr, prefer_max_numeric=False):
    """
    Collapse a zoom step/interpolate expression to a single scalar or colour.
    Returns the expression unchanged when it is not a step/interpolate.
    """
    if not is_expr(expr):
        return expr
    vals = _stop_values(expr)
    if not vals:
        return expr
    nums = [v for v in vals if isinstance(v, (int, float))]
    if prefer_max_numeric and nums:
        return max(nums)
    return vals[-1]


def zoom_step_dasharray(expr):
    """
    From a step+literal dasharray expression return the first non-solid
    [dash, gap] array; fall back to [2, 0] (solid) if none found.
    """
    if not is_expr(expr) or expr[0] != "step":
        return expr
    # values at indices 4, 6, 8, … (skip thresholds at 3, 5, 7, …)
    candidates = [expr[i] for i in range(4, len(expr), 2)]
    # also include the default (index 2)
    default = expr[2] if len(expr) > 2 else None
    if default is not None:
        candidates = [default] + candidates
    for c in candidates:
        inner = c[1] if (is_expr(c) and c[0] == "literal") else c
        if isinstance(inner, list) and inner != [1, 0] and inner != [2, 0]:
            return inner
    return [2, 0]


def extract_mid_match(expr):
    """
    From interpolate(zoom, match(…), match(…), …) return the middle stop's
    match expression. Returns `expr` unchanged if pattern does not match.
    """
    if not is_expr(expr) or expr[0] != "interpolate":
        return expr
    vals = _stop_values(expr)
    if not vals:
        return expr
    mid = vals[len(vals) // 2]
    if is_expr(mid) and mid[0] in ("match", "case"):
        return mid
    return mid if isinstance(mid, str) else expr


def property_interpolate_to_step(expr):
    """
    ["interpolate", interp, ["get", prop], v0, c0, v1, c1, …]
    → ["step", ["get", prop], c0, v1, c1, …]
    """
    if not (is_expr(expr) and expr[0] == "interpolate"):
        return expr
    input_expr = expr[2]
    if not (is_expr(input_expr) and input_expr[0] == "get"):
        return expr
    vals = _stop_values(expr)
    thresholds = [expr[i] for i in range(3, len(expr) - 1, 2)]
    if not vals:
        return expr
    result = ["step", input_expr, vals[0]]
    for thresh, val in zip(thresholds[1:], vals[1:]):
        result += [thresh, val]
    return result


# ── text-field simplification ─────────────────────────────────────────────────

def _find_get(expr):
    """Return the first property name referenced by a ["get", prop] in expr."""
    if is_expr(expr):
        if expr[0] == "get" and len(expr) > 1 and isinstance(expr[1], str):
            return expr[1]
        for sub in expr[1:]:
            r = _find_get(sub)
            if r:
                return r
    return None


def simplify_text_field(val):
    """
    Return a simple ["get", prop] for expressions QGIS cannot parse:
    - step(zoom, concat(prefix, get(prop)), …) → ["get", prop]
    - complex case/format multilingual → ["get", name_prop]
    Keeps ["get", prop] and plain strings unchanged.
    """
    if isinstance(val, str):
        return val
    if not is_expr(val):
        return ["get", "name"]
    if val[0] == "get":
        return val
    if val[0] == "literal" and isinstance(val[1], str):
        return val[1]
    # find property referenced anywhere inside the expression
    prop = _find_get(val) or "name"
    return ["get", prop]


def simplify_text_font(val):
    """Flatten case/expression-based text-font to a plain string list."""
    if isinstance(val, list) and all(isinstance(v, str) for v in val):
        return val


def case_in_literal_to_match(expr):
    """
    Convert ["case", ["in", ["get", prop], ["literal", [vals]]], color, …, default]
    → ["match", ["get", prop], [vals], color, …, default]
    Only when ALL conditions use in+literal on the same property.
    Returns expr unchanged if the pattern does not match.
    """
    if not (is_expr(expr) and expr[0] == "case"):
        return expr
    prop = None
    pairs = []
    i = 1
    while i + 1 < len(expr):
        cond = expr[i]
        val = expr[i + 1]
        if not (is_expr(cond) and cond[0] == "in" and len(cond) == 3):
            return expr
        in_get, in_lit = cond[1], cond[2]
        if not (is_expr(in_get) and in_get[0] == "get"):
            return expr
        if not (is_expr(in_lit) and in_lit[0] == "literal"):
            return expr
        p = in_get[1]
        if prop is None:
            prop = p
        elif prop != p:
            return expr
        pairs.append((in_lit[1], val))
        i += 2
    if not pairs:
        return expr
    default = expr[-1] if (len(expr) % 2 == 0) else None
    result = ["match", ["get", prop]]
    for vals, color in pairs:
        result.append(vals if isinstance(vals, list) else [vals])
        result.append(color)
    if default is not None:
        result.append(default)
    return result


def input_of(expr):
    """
    Return the input sub-expression of a step or interpolate expression.
    step:        ["step", INPUT, default, t1, v1, …]  → expr[1]
    interpolate: ["interpolate", interp, INPUT, z0, v0, …] → expr[2]
    """
    if not is_expr(expr):
        return None
    if expr[0] == "step":
        return expr[1] if len(expr) > 1 else None
    if expr[0] == "interpolate":
        return expr[2] if len(expr) > 2 else None
    return None


def is_zoom_based(expr):
    """True if expr is a step or interpolate whose input is ["zoom"]."""
    if not is_expr(expr) or expr[0] not in ("step", "interpolate"):
        return False
    return input_of(expr) == ["zoom"]
    return ["Noto Sans Regular"]


# ── filter normalization ──────────────────────────────────────────────────────

_UNSUPPORTED_FILTER_OPS = {"length", "zoom", "+", "-", "*", "/", "sqrt", "coalesce"}


def _filter_uses_unsupported(expr):
    """True if the expression root uses an op QGIS cannot evaluate in a filter."""
    return is_expr(expr) and expr[0] in _UNSUPPORTED_FILTER_OPS


def normalize_filter(f):
    """
    Recursively simplify a filter expression for QGIS:
    - ["in", ["get", prop], ["literal", [vals]]] → ["in", prop, v1, v2, …]
    - Drop sub-expressions with length/zoom/math operators
    Returns None to signal that a sub-filter should be dropped.
    """
    if not is_expr(f):
        return f
    op = f[0]

    if op in ("all", "any"):
        subs = [normalize_filter(s) for s in f[1:]]
        subs = [s for s in subs if s is not None]
        if not subs:
            return None
        return subs[0] if len(subs) == 1 else [op] + subs

    if op in ("!", "none"):
        sub = normalize_filter(f[1]) if len(f) > 1 else None
        return [op, sub] if sub else None

    # new-style "in": ["in", ["get", prop], ["literal", vals]]
    if op == "in" and len(f) == 3 and is_expr(f[1]) and f[1][0] == "get":
        prop = f[1][1]
        vals_expr = f[2]
        if is_expr(vals_expr) and vals_expr[0] == "literal":
            vals = vals_expr[1]
            return ["in", prop] + (vals if isinstance(vals, list) else [vals])

    # comparisons involving unsupported ops (e.g. [">=", ["zoom"], …] or
    # ["<=", ["length", …], 5]) → drop
    if op in ("==", "!=", "<", "<=", ">", ">="):
        for arg in f[1:]:
            if _filter_uses_unsupported(arg):
                return None

    return f


# ── per-layer normalization ────────────────────────────────────────────────────

def normalize_paint(lid, paint, ltype):
    if not paint:
        return paint
    p = paint  # already deep-copied by caller

    # ── fill ─────────────────────────────────────────────────────────────────
    if ltype == "fill":
        c = p.get("fill-color")
        if is_expr(c):
            # nested interpolate(zoom, match, match) → pick middle match
            if c[0] == "interpolate":
                has_expr_stops = any(is_expr(c[i]) for i in range(4, len(c), 2))
                if has_expr_stops:
                    p["fill-color"] = extract_mid_match(c)
                    c = p["fill-color"]
            # property-based interpolate → step (intermediate form)
            if is_expr(c) and c[0] == "interpolate" and is_expr(c[2]) and c[2][0] == "get":
                p["fill-color"] = property_interpolate_to_step(c)
                c = p["fill-color"]
            # property-based step → static mid-range colour (QGIS can't step on
            # non-zoom inputs; pick the middle stop colour for best visual fidelity)
            inp = input_of(c) if is_expr(c) else None
            if is_expr(c) and c[0] == "step" and is_expr(inp) and inp[0] == "get":
                stop_vals = _stop_values(c)
                colours = [v for v in stop_vals if isinstance(v, str)]
                p["fill-color"] = colours[len(colours) // 2] if colours else "#888888"

        # flatten fill-opacity expressions
        if "fill-opacity" in p:
            op_val = p["fill-opacity"]
            if any_alpha(p.get("fill-color", "")):
                # alpha already in color: drop separate opacity
                del p["fill-opacity"]
            elif is_expr(op_val):
                flat = flatten_stops(op_val, prefer_max_numeric=True)
                if isinstance(flat, (int, float)):
                    p["fill-opacity"] = flat
                else:
                    del p["fill-opacity"]

    # ── line ─────────────────────────────────────────────────────────────────
    if ltype == "line":
        # step-based line-color → last stop colour
        c = p.get("line-color")
        if is_expr(c):
            if c[0] == "step":
                p["line-color"] = flatten_stops(c)
            elif c[0] == "interpolate":
                has_expr_stops = any(is_expr(c[i]) for i in range(4, len(c), 2))
                if has_expr_stops:
                    p["line-color"] = extract_mid_match(c)

        # flatten line-opacity expressions:
        #   - step(zoom, …) → max stop value (QGIS can't handle step opacity)
        #   - interpolate(zoom, …) alongside an expression line-color → flatten
        #     (QGIS only supports interpolated opacity when line-color is static)
        if "line-opacity" in p:
            op_val = p["line-opacity"]
            c_val = p.get("line-color")
            if is_expr(op_val) and (
                op_val[0] == "step" or (op_val[0] == "interpolate" and is_expr(c_val))
            ):
                flat = flatten_stops(op_val, prefer_max_numeric=True)
                p["line-opacity"] = flat if isinstance(flat, (int, float)) else 1.0
            # if color has alpha, drop separate opacity entirely
            if "line-opacity" in p and any_alpha(p.get("line-color", "")):
                del p["line-opacity"]

        # step+literal dasharray → static array
        da = p.get("line-dasharray")
        if is_expr(da) and da[0] == "step":
            p["line-dasharray"] = zoom_step_dasharray(da)

        # expression line-gap-width → static value (QGIS can't parse sub-expressions)
        lgw = p.get("line-gap-width")
        if is_expr(lgw):
            p["line-gap-width"] = flatten_stops(lgw)

    # ── symbol paint ─────────────────────────────────────────────────────────
    if ltype == "symbol":
        if "text-opacity" in p and is_expr(p["text-opacity"]):
            flat = flatten_stops(p["text-opacity"], prefer_max_numeric=True)
            p["text-opacity"] = flat if isinstance(flat, (int, float)) else 1.0

        # zoom-step text-color → flatten to last stop value (static color)
        tc = p.get("text-color")
        if is_expr(tc) and tc[0] == "step" and is_zoom_based(tc):
            p["text-color"] = flatten_stops(tc)

        # case+in+literal text-color → match (QGIS supports match in paint)
        if is_expr(p.get("text-color")) and p["text-color"][0] == "case":
            p["text-color"] = case_in_literal_to_match(p["text-color"])

    return p


def normalize_layout(layout, ltype, lid=""):
    if not layout or ltype != "symbol":
        return layout
    lo = layout

    # ── text-field ────────────────────────────────────────────────────────────
    if "text-field" in lo:
        lo["text-field"] = simplify_text_field(lo["text-field"])

    # ── text-font ─────────────────────────────────────────────────────────────
    if "text-font" in lo:
        lo["text-font"] = simplify_text_font(lo["text-font"])

    # ── icon-image / icon-size: remove sprite-dependent icons ─────────────────
    if "icon-image" in lo:
        del lo["icon-image"]
        lo.pop("icon-size", None)
        lo.pop("icon-optional", None)
    elif "icon-size" in lo and is_expr(lo["icon-size"]):
        lo["icon-size"] = flatten_stops(lo["icon-size"]) or 1.0

    # ── text-variable-anchor: not supported in QGIS VT renderer ──────────────
    # QGIS tries to parse ["center"] as a MapLibre expression → "unsupported".
    # Replace with the simpler (and fully supported) text-anchor property.
    if "text-variable-anchor" in lo:
        del lo["text-variable-anchor"]
        if "text-anchor" not in lo:
            lo["text-anchor"] = "center"

    # ── symbol-sort-key: drop math expressions ────────────────────────────────
    if "symbol-sort-key" in lo:
        sk = lo["symbol-sort-key"]
        if is_expr(sk) and sk[0] not in ("get", "literal"):
            del lo["symbol-sort-key"]

    # ── layout numeric properties: QGIS only accepts static values for these ──
    # Even plain zoom interpolations are rejected for text-padding, text-letter-
    # spacing, icon-padding, etc.  Flatten any expression to a scalar.
    for key in ("text-size", "text-padding", "text-max-width",
                "text-letter-spacing", "symbol-spacing", "text-radial-offset",
                "icon-padding"):
        val = lo.get(key)
        if not is_expr(val) or val[0] not in ("step", "interpolate"):
            continue
        stop_vals = _stop_values(val)
        has_expr_stops = any(is_expr(v) for v in stop_vals)
        if has_expr_stops:
            nums = [v for v in stop_vals if isinstance(v, (int, float))]
            lo[key] = nums[-1] if nums else (12 if key == "text-size" else 2)
        else:
            # plain-number stops — still need to flatten for QGIS
            flat = flatten_stops(val)
            lo[key] = flat if isinstance(flat, (int, float)) else stop_vals[-1]

    return lo


_LAYERS_TO_DROP = {
    "buildings-extrusion",  # fill-extrusion: unsupported layer type
    "roads_oneway",         # sprite-only layer; no icon-image set; renders nothing in QGIS
}


def normalize_layer(layer):
    """Normalize one layer; return None to drop it entirely."""
    layer = copy.deepcopy(layer)
    ltype = layer.get("type", "")
    lid = layer.get("id", "")

    # Drop unsupported layer types and sprite-only layers
    if ltype == "fill-extrusion" or lid in _LAYERS_TO_DROP:
        return None

    # landuse_park: fill-color case+in+literal → static colour
    if lid == "landuse_park" and "paint" in layer:
        c = layer["paint"].get("fill-color")
        if is_expr(c) and c[0] == "case":
            layer["paint"]["fill-color"] = "#ADDC91"

    # Normalize filter
    if "filter" in layer:
        new_filter = normalize_filter(layer["filter"])
        if new_filter is None:
            del layer["filter"]
        else:
            layer["filter"] = new_filter

    # Normalize paint
    if "paint" in layer:
        layer["paint"] = normalize_paint(lid, layer["paint"], ltype)

    # Normalize layout
    if "layout" in layer:
        layer["layout"] = normalize_layout(layer["layout"], ltype, lid)

    return layer


# ── main ──────────────────────────────────────────────────────────────────────

def normalize(in_path: Path, out_path: Path) -> None:
    with open(in_path) as f:
        style = json.load(f)

    kept, dropped = [], []
    for layer in style.get("layers", []):
        result = normalize_layer(layer)
        if result is None:
            dropped.append(layer.get("id", "?"))
            print(f"  drop   {layer.get('id', '?')!r}  ({layer.get('type')})")
        else:
            kept.append(result)

    style["layers"] = kept

    # Remove sprite URL — QGIS can't load remote/PBF sprites; causes warnings on
    # every layer that implicitly references the sprite sheet.
    style.pop("sprite", None)

    out_path.parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "w") as f:
        json.dump(style, f, indent="\t", ensure_ascii=False)

    print(f"\nWrote {out_path}")
    print(f"  {len(kept)} layers kept, {len(dropped)} dropped: {dropped}")


def main():
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "--in", dest="input", type=Path, default=STYLE_IN_DEFAULT,
        help=f"Input style JSON (default: {STYLE_IN_DEFAULT})",
    )
    parser.add_argument(
        "--out", type=Path, default=STYLE_OUT_DEFAULT,
        help=f"Output path (default: {STYLE_OUT_DEFAULT})",
    )
    args = parser.parse_args()
    print(f"Normalizing {args.input} for QGIS …")
    normalize(args.input, args.out)


if __name__ == "__main__":
    main()
