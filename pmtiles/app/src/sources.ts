/**
 * Source manifest — all PMTiles archives served by this app.
 *
 * Each key is the MapLibre source ID used in style.json.
 * archive: R2 object path, without .pmtiles extension.
 * ext:     tile format served by the Cloudflare Worker.
 *
 * The Cloudflare Worker resolves:
 *   {WORKER_URL}/{archive}/{z}/{x}/{y}.{ext}  →  {archive}.pmtiles in R2
 *
 * To add a new layer:
 *   1. Add an entry here.
 *   2. Add a matching source stub in style.json (type + empty tiles: []).
 *   3. Add layers in style.json that reference this source.
 *   No other files need to change.
 */

export interface SourceDef {
  archive: string;
  attribution: string;
  maxzoom: number;
  ext: "mvt" | "webp";
}

export const SOURCES = {

  // ---------------------------------------------------------------------------
  // Base layers
  // ---------------------------------------------------------------------------

  protomaps: {
    archive: "tiles/base",
    attribution: '<a href="https://github.com/protomaps/basemaps">Protomaps</a> © <a href="https://openstreetmap.org">OpenStreetMap Contributors</a>',
    maxzoom: 15,
    ext: "mvt",
  },

  overture: {
    archive: "tiles/overture/buildings",
    attribution: '<a href="https://overturemaps.org">Overture Maps Foundation</a>',
    maxzoom: 14,
    ext: "mvt",
  },

  terrain: {
    archive: "tiles/terrain",
    attribution: '<a href="https://mapterhorn.com/attribution">© Mapterhorn</a>',
    maxzoom: 12,
    ext: "webp",
  },

  // ---------------------------------------------------------------------------
  // GRID3 — COD (Democratic Republic of Congo)
  // ---------------------------------------------------------------------------

  grid3: {
    archive: "tiles/grid3",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 15,
    ext: "mvt",
  },

  grid3_cod_health_zones: {
    archive: "tiles/grid3/cod/GRID3_COD_health_zones_v8_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 8,
    ext: "mvt",
  },

  grid3_cod_health_zones_centroids: {
    archive: "tiles/grid3/cod/GRID3_COD_health_zones_v8_0_centroids",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 2,
    ext: "mvt",
  },

  grid3_cod_health_areas: {
    archive: "tiles/grid3/cod/GRID3_COD_health_areas_v8_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 8,
    ext: "mvt",
  },

  grid3_cod_health_areas_centroids: {
    archive: "tiles/grid3/cod/GRID3_COD_health_areas_v8_0_centroids",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 4,
    ext: "mvt",
  },

  grid3_cod_health_facilities: {
    archive: "tiles/grid3/cod/GRID3_COD_health_facilities_v8_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 8,
    ext: "mvt",
  },

  grid3_cod_settlement_names: {
    archive: "tiles/grid3/cod/GRID3_COD_settlement_names_v8_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 8,
    ext: "mvt",
  },

  grid3_cod_settlement_extents: {
    archive: "tiles/grid3/cod/GRID3_COD_settlement_extents_v3_1.pmtiles",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 15,
    ext: "mvt",
  },

  // ---------------------------------------------------------------------------
  // GRID3 — NGA (Nigeria)
  // ---------------------------------------------------------------------------

  grid3_nga_settlement_extents: {
    archive: "tiles/grid3/nga/GRID3_NGA_settlement_extents_v3_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 14,
    ext: "mvt",
  },

    grid3_nga_settlement_blocks: {
    archive: "tiles/grid3/nga/GRID3_NGA_settlement_extents_v4_0",
    attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
    maxzoom: 14,
    ext: "mvt",
  },


  // ---------------------------------------------------------------------------
  // GRID3 — Settlement extents by country (ISO 3166-1 alpha-3)
  // Add new countries below. Uncomment and set the correct version when data
  // is available in R2.
  // ---------------------------------------------------------------------------

  // grid3_dji_settlements: {
  //   archive: "tiles/grid3/dji/settlement_extents_v3_0",
  //   attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
  //   maxzoom: 14,
  //   ext: "mvt",
  // },

  // grid3_eri_settlements: {
  //   archive: "tiles/grid3/eri/settlement_extents_v3_0",
  //   attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
  //   maxzoom: 14,
  //   ext: "mvt",
  // },

  // grid3_eth_settlements: {
  //   archive: "tiles/grid3/eth/settlement_extents_v3_0",
  //   attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
  //   maxzoom: 14,
  //   ext: "mvt",
  // },

  // grid3_gab_settlements: {
  //   archive: "tiles/grid3/gab/settlement_extents_v3_0",
  //   attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
  //   maxzoom: 14,
  //   ext: "mvt",
  // },

  // grid3_gha_settlements: {
  //   archive: "tiles/grid3/gha/settlement_extents_v3_0",
  //   attribution: '<a href="https://ciesin.columbia.edu/">© CIESIN Columbia University</a>',
  //   maxzoom: 14,
  //   ext: "mvt",
  // },

} satisfies Record<string, SourceDef>;

export type SourceKey = keyof typeof SOURCES;
