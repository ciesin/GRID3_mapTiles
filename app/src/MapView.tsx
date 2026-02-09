/* @refresh reload */
import { render } from "solid-js/web";
import "./index.css";
import MaplibreInspect from "@maplibre/maplibre-gl-inspect";
import "@maplibre/maplibre-gl-inspect/dist/maplibre-gl-inspect.css";
import {
  AttributionControl,
  GeolocateControl,
  GlobeControl,
  Map as MaplibreMap,
  NavigationControl,
  Popup,
  addProtocol,
  getRTLTextPluginStatus,
  removeProtocol,
  setRTLTextPlugin,
} from "maplibre-gl";
import type {
  LngLatBoundsLike,
  MapGeoJSONFeature,
  MapTouchEvent,
  StyleSpecification,
} from "maplibre-gl";
import "maplibre-gl/dist/maplibre-gl.css";
import type { LayerSpecification } from "@maplibre/maplibre-gl-style-spec";
import { FileSource, PMTiles, Protocol } from "pmtiles";
import {
  For,
  type JSX,
  Show,
  createEffect,
  createMemo,
  createSignal,
  onMount,
} from "solid-js";
import { type Flavor, layers, namedFlavor } from "../../styles/src/index.ts";
import { language_script_pairs } from "../../styles/src/language.ts";
// import Nav from "./Nav";
import {
  VERSION_COMPATIBILITY,
  createHash,
  isValidPMTiles,
  layersForVersion,
  parseHash,
} from "./utils";

const STYLE_MAJOR_VERSION = 5;

const DEFAULT_TILES = "https://pub-927f42809d2e4b89b96d1e7efb091d1f.r2.dev/global.pmtiles";

const ATTRIBUTION =
  '<a href="https://github.com/protomaps/basemaps">Protomaps</a> © <a href="https://openstreetmap.org">OpenStreetMap</a>';

function getSourceLayer(l: LayerSpecification): string {
  if ("source-layer" in l && l["source-layer"]) {
    return l["source-layer"];
  }
  return "";
}

const featureIdToOsmId = (raw: string | number) => {
  return Number(BigInt(raw) & ((BigInt(1) << BigInt(44)) - BigInt(1)));
};

const featureIdToOsmType = (i: string | number) => {
  const t = (BigInt(i) >> BigInt(44)) & BigInt(3);
  if (t === BigInt(1)) return "node";
  if (t === BigInt(2)) return "way";
  if (t === BigInt(3)) return "relation";
  return "not_osm";
};

const displayId = (featureId?: string | number) => {
  if (featureId) {
    const osmType = featureIdToOsmType(featureId);
    if (osmType !== "not_osm") {
      const osmId = featureIdToOsmId(featureId);
      return (
        <a
          class="underline text-purple"
          target="_blank"
          rel="noreferrer"
          href={`https://openstreetmap.org/${osmType}/${osmId}`}
        >
          {osmType} {osmId}
        </a>
      );
    }
  }
  return featureId;
};

const FeaturesProperties = (props: { features: MapGeoJSONFeature[] }) => {
  return (
    <div class="features-properties">
      <For each={props.features}>
        {(f) => (
          <div>
            <span>
              <strong>{getSourceLayer(f.layer)}</strong>
              <span> ({f.geometry.type})</span>
            </span>
            <table>
              <tbody>
                <tr>
                  <td>id</td>
                  <td>{displayId(f.id)}</td>
                </tr>
                <For each={Object.entries(f.properties)}>
                  {([key, value]) => (
                    <tr>
                      <td>{key}</td>
                      <td>{value}</td>
                    </tr>
                  )}
                </For>
              </tbody>
            </table>
          </div>
        )}
      </For>
    </div>
  );
};

function getMaplibreStyle(
  lang: string,
  localSprites: boolean,
  flavorName?: string,
  flavor?: Flavor,
  tiles?: string,
  npmLayers?: LayerSpecification[],
  droppedArchive?: PMTiles,
): StyleSpecification {
  const style = {
    version: 8 as unknown,
    sources: {},
    layers: [],
  } as StyleSpecification;
  if (!tiles) return style;
  if (!flavor) return style;
  let tilesWithProtocol: string;
  if (droppedArchive) {
    tilesWithProtocol = `pmtiles://${droppedArchive.source.getKey()}`;
  } else if (isValidPMTiles(tiles)) {
    tilesWithProtocol = `pmtiles://${tiles}`;
  } else {
    tilesWithProtocol = tiles;
  }
  style.layers = [];

  if (localSprites) {
    style.sprite = `${location.protocol}//${location.host}/${flavorName}`;
  } else {
    style.sprite = `https://protomaps.github.io/basemaps-assets/sprites/v4/${flavorName}`;
  }

  style.glyphs =
    "https://protomaps.github.io/basemaps-assets/fonts/{fontstack}/{range}.pbf";

  style.sources = {
    protomaps: {
      type: "vector",
      attribution: ATTRIBUTION,
      url: tilesWithProtocol,
    },
  };

  if (npmLayers && npmLayers.length > 0) {
    style.layers = style.layers.concat(npmLayers);
  } else {
    style.layers = style.layers.concat(
      layers("protomaps", flavor, { lang: lang }),
    );
  }
  return style;
}

type MapLibreViewRef = { fit: () => void };

function MapLibreView(props: {
  flavorName?: string;
  flavor?: Flavor;
  lang: string;
  localSprites: boolean;
  showBoxes: boolean;
  tiles?: string;
  npmLayers: LayerSpecification[];
  npmVersion?: string;
  droppedArchive?: PMTiles;
  ref?: (ref: MapLibreViewRef) => void;
}) {
  let mapContainer: HTMLDivElement | undefined;
  let mapRef: MaplibreMap | undefined;
  let hiddenRef: HTMLDivElement | undefined;
  let longPressTimeout: ReturnType<typeof setTimeout>;

  const [error, setError] = createSignal<string | undefined>();
  const [timelinessInfo, setTimelinessInfo] = createSignal<string>();
  const [protocolRef, setProtocolRef] = createSignal<Protocol | undefined>();
  const [zoom, setZoom] = createSignal<number>(0);
  const [mismatch, setMismatch] = createSignal<string>("");

  onMount(() => {
    props.ref?.({ fit });

    if (getRTLTextPluginStatus() === "unavailable") {
      setRTLTextPlugin(
        "https://unpkg.com/@mapbox/mapbox-gl-rtl-text@0.2.3/mapbox-gl-rtl-text.min.js",
        true,
      );
    }

    if (!mapContainer) {
      console.error("Could not mount map element");
      return;
    }

    const protocol = new Protocol({ metadata: true });
    setProtocolRef(protocol);
    addProtocol("pmtiles", protocol.tile);

    const map = new MaplibreMap({
      hash: "map",
      container: mapContainer,
      style: getMaplibreStyle("en", false, props.flavorName, props.flavor),
      attributionControl: false,
    });

    map.addControl(new NavigationControl());
    map.addControl(new GlobeControl());
    map.addControl(
      new GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true,
        },
        trackUserLocation: true,
        fitBoundsOptions: {
          animate: false,
        },
      }),
    );

    map.addControl(
      new AttributionControl({
        compact: false,
      }),
    );

    map.addControl(
      new MaplibreInspect({
        popup: new Popup({
          closeButton: false,
          closeOnClick: false,
        }),
      }),
    );

    const popup = new Popup({
      closeButton: true,
      closeOnClick: false,
      maxWidth: "none",
    });

    map.on("load", () => {
      map.resize();
    });

    map.on("error", (e) => {
      setError(e.error.message);
    });

    map.on("idle", () => {
      setZoom(map.getZoom());
      setError(undefined);
      archiveInfo().then((i) => {
        if (i?.metadata) {
          const m = i.metadata as {
            version?: string;
            "planetiler:osm:osmosisreplicationtime"?: string;
          };
          setTimelinessInfo(
            `tiles@${m.version} ${m["planetiler:osm:osmosisreplicationtime"]?.substr(0, 10)}`,
          );
        }
      });
    });

    const showContextMenu = (e: MapTouchEvent) => {
      const features = map.queryRenderedFeatures(e.point);
      if (hiddenRef && features.length) {
        hiddenRef.innerHTML = "";
        render(() => <FeaturesProperties features={features} />, hiddenRef);
        popup.setHTML(hiddenRef.innerHTML);
        popup.setLngLat(e.lngLat);
        popup.addTo(map);
      } else {
        popup.remove();
      }
    };

    map.on("contextmenu", (e: MapTouchEvent) => {
      showContextMenu(e);
    });

    map.on("touchstart", (e: MapTouchEvent) => {
      longPressTimeout = setTimeout(() => {
        showContextMenu(e);
      }, 500);
    });

    const clearLongPress = () => {
      clearTimeout(longPressTimeout);
    };

    map.on("zoom", (e) => {
      setZoom(e.target.getZoom());
    });

    map.on("touchend", clearLongPress);
    map.on("touchcancel", clearLongPress);
    map.on("touchmove", clearLongPress);
    map.on("pointerdrag", clearLongPress);
    map.on("pointermove", clearLongPress);
    map.on("moveend", clearLongPress);
    map.on("gesturestart", clearLongPress);
    map.on("gesturechange", clearLongPress);
    map.on("gestureend", clearLongPress);

    mapRef = map;

    return () => {
      setProtocolRef(undefined);
      removeProtocol("pmtiles");
      map.remove();
    };
  });

  // ensure the dropped archive is first added to the protocol
  const archiveInfo = async (): Promise<
    { metadata: unknown; bounds: LngLatBoundsLike } | undefined
  > => {
    if (!props.droppedArchive && props.tiles?.endsWith(".json")) {
      const resp = await fetch(props.tiles);
      const tileJson = await resp.json();
      return {
        metadata: tileJson,
        bounds: [
          [tileJson.bounds[0], tileJson.bounds[1]],
          [tileJson.bounds[2], tileJson.bounds[3]],
        ],
      };
    }

    const p = protocolRef();
    if (p) {
      let archive = props.droppedArchive;
      if (archive) {
        p.add(archive);
      } else if (props.tiles) {
        archive = p.tiles.get(props.tiles);
        if (!archive) {
          archive = new PMTiles(props.tiles);
          p.add(archive);
        }
      }
      if (archive) {
        const metadata = await archive.getMetadata();
        const header = await archive.getHeader();
        return {
          metadata: metadata,
          bounds: [
            [header.minLon, header.minLat],
            [header.maxLon, header.maxLat],
          ],
        };
      }
    }
  };

  const fit = async () => {
    const bounds = (await archiveInfo())?.bounds;
    if (bounds) {
      mapRef?.fitBounds(bounds, { animate: false });
    }
  };

  const memoizedStyle = createMemo(() => {
    return getMaplibreStyle(
      props.lang,
      props.localSprites,
      props.flavorName,
      props.flavor,
      props.tiles,
      props.npmLayers,
      props.droppedArchive,
    );
  });

  createEffect(() => {
    const styleMajorVersion = props.npmVersion
      ? +props.npmVersion.split(".")[0]
      : STYLE_MAJOR_VERSION;
    archiveInfo().then((i) => {
      if (i && i.metadata instanceof Object && "version" in i.metadata) {
        const tilesetVersion = +(i.metadata.version as string).split(".")[0];
        if (
          VERSION_COMPATIBILITY[tilesetVersion].indexOf(styleMajorVersion) < 0
        ) {
          setMismatch(
            `style v${styleMajorVersion} may not be compatible with tileset v${tilesetVersion}. `,
          );
        } else {
          setMismatch("");
        }
      }
    });
  });

  createEffect(() => {
    if (mapRef) {
      mapRef.showTileBoundaries = props.showBoxes;
      mapRef.showCollisionBoxes = props.showBoxes;
    }
  });

  createEffect(() => {
    if (mapRef) {
      mapRef.setStyle(memoizedStyle());
    }
  });

  return (
    <>
      <div class="hidden" ref={hiddenRef} />
      <div ref={mapContainer} class="h-full w-full flex" />
      <div class="absolute bottom-0 p-1 text-xs bg-white bg-opacity-50">
        {timelinessInfo()} z@{zoom().toFixed(2)}
        <Show when={mismatch()}>
          <div class="font-bold text-red">
            {mismatch()}
            <a
              class="underline"
              href="https://docs.protomaps.com/basemaps/downloads#current-version"
            >
              See Docs.
            </a>
          </div>
        </Show>
      </div>
      <Show when={error()}>
        <div class="absolute p-8 flex justify-center items-center bg-white bg-opacity-50 font-mono text-red">
          {error()}
        </div>
      </Show>
    </>
  );
}

function MapView() {
  const hash = parseHash(location.hash);
  const [flavorName, setFlavorName] = createSignal<string>(
    hash.flavorName || "light",
  );
  const [lang, setLang] = createSignal<string>(hash.lang || "en");
  const [tiles, setTiles] = createSignal<string>(hash.tiles || DEFAULT_TILES);
  const [localSprites, setLocalSprites] = createSignal<boolean>(
    hash.local_sprites === "true",
  );
  const [showBoxes, setShowBoxes] = createSignal<boolean>(
    hash.show_boxes === "true",
  );
  const [showStyleJson, setShowStyleJson] = createSignal<boolean>(false);
  const [publishedStyleVersion, setPublishedStyleVersion] = createSignal<
    string | undefined
  >(hash.npm_version);
  const [knownNpmVersions, setKnownNpmVersions] = createSignal<string[]>([]);
  const [npmLayers, setNpmLayers] = createSignal<LayerSpecification[]>([]);
  const [droppedArchive, setDroppedArchive] = createSignal<PMTiles>();
  const [maplibreView, setMaplibreView] = createSignal<MapLibreViewRef>();

  createEffect(() => {
    const record = {
      flavorName: flavorName(),
      lang: lang(),
      tiles: droppedArchive()
        ? undefined
        : tiles() === DEFAULT_TILES
          ? undefined
          : tiles(),
      local_sprites: localSprites() ? "true" : undefined,
      show_boxes: showBoxes() ? "true" : undefined,
      npm_version: publishedStyleVersion()
        ? publishedStyleVersion()
        : undefined,
    };
    location.hash = createHash(location.hash, record);
  });

  const flavor = (): Flavor => {
    return namedFlavor(flavorName());
  };

  const drop: JSX.EventHandler<HTMLDivElement, DragEvent> = (event) => {
    event.preventDefault();
    if (event.dataTransfer) {
      setDroppedArchive(
        new PMTiles(new FileSource(event.dataTransfer.files[0])),
      );
    }
  };

  const dragover: JSX.EventHandler<HTMLDivElement, Event> = (event) => {
    event.preventDefault();
    return false;
  };

  const handleKeyPress: JSX.EventHandler<HTMLDivElement, KeyboardEvent> = (
    event,
  ) => {
    const c = event.charCode;
    if (c >= 49 && c <= 53) {
      setFlavorName(["light", "dark", "white", "grayscale", "black"][c - 49]);
    }
  };

  createEffect(() => {
    (async () => {
      const psv = publishedStyleVersion();
      if (psv === undefined || psv === "") {
        setNpmLayers([]);
      } else {
        setNpmLayers(await layersForVersion(psv, flavorName()));
      }
    })();
  });

  language_script_pairs.sort((a, b) => a.full_name.localeCompare(b.full_name));

  return (
    <div class="flex flex-col h-dvh w-full">
      <div
        class="h-full flex grow-1"
        onKeyPress={handleKeyPress}
        ondragover={dragover}
        ondrop={drop}
      >
        <MapLibreView
          ref={setMaplibreView}
          tiles={tiles()}
          localSprites={localSprites()}
          showBoxes={showBoxes()}
          flavorName={flavorName()}
          flavor={flavor()}
          lang={lang()}
          npmLayers={npmLayers()}
          npmVersion={publishedStyleVersion()}
          droppedArchive={droppedArchive()}
        />
      </div>
    </div>
  );
}

const root = document.getElementById("root");

if (root) {
  render(() => <MapView />, root);
}
