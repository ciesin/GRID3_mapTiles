#!/usr/bin/bash

pmtiles extract \
  --bbox=-17.75,-35.06,51.47,37.51 \
  --maxzoom=11 \
  https://download.mapterhorn.com/planet.pmtiles \
  terrain-z11.pmtiles