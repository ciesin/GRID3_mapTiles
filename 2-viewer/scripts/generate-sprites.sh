#!/bin/bash
# Simple sprite generator using ImageMagick (if available) or creates placeholder metadata

SPRITES_DIR="$(dirname "$0")/../public/sprites"
cd "$SPRITES_DIR" || exit 1

echo "Generating sprite metadata..."

# Create sprite metadata JSON for 1x
cat > sprite.json << 'EOF'
{
  "wetland": {
    "width": 32,
    "height": 32,
    "x": 0,
    "y": 0,
    "pixelRatio": 1
  },
  "swamp": {
    "width": 32,
    "height": 32,
    "x": 32,
    "y": 0,
    "pixelRatio": 1
  },
  "marsh": {
    "width": 32,
    "height": 32,
    "x": 64,
    "y": 0,
    "pixelRatio": 1
  }
}
EOF

# Create sprite metadata JSON for 2x
cat > sprite@2x.json << 'EOF'
{
  "wetland": {
    "width": 32,
    "height": 32,
    "x": 0,
    "y": 0,
    "pixelRatio": 2
  },
  "swamp": {
    "width": 32,
    "height": 32,
    "x": 64,
    "y": 0,
    "pixelRatio": 2
  },
  "marsh": {
    "width": 32,
    "height": 32,
    "x": 128,
    "y": 0,
    "pixelRatio": 2
  }
}
EOF

echo "✓ Created sprite.json"
echo "✓ Created sprite@2x.json"

# Check if ImageMagick/rsvg-convert is available
if command -v rsvg-convert &> /dev/null && command -v convert &> /dev/null; then
    echo ""
    echo "Generating PNG sprite sheets..."
    
    # Generate 1x sprites
    rsvg-convert -w 32 -h 32 wetland.svg -o wetland_1x.png
    rsvg-convert -w 32 -h 32 swamp.svg -o swamp_1x.png
    rsvg-convert -w 32 -h 32 marsh.svg -o marsh_1x.png
    convert +append wetland_1x.png swamp_1x.png marsh_1x.png sprite.png
    rm wetland_1x.png swamp_1x.png marsh_1x.png
    echo "✓ Created sprite.png"
    
    # Generate 2x sprites
    rsvg-convert -w 64 -h 64 wetland.svg -o wetland_2x.png
    rsvg-convert -w 64 -h 64 swamp.svg -o swamp_2x.png
    rsvg-convert -w 64 -h 64 marsh.svg -o marsh_2x.png
    convert +append wetland_2x.png swamp_2x.png marsh_2x.png sprite@2x.png
    rm wetland_2x.png swamp_2x.png marsh_2x.png
    echo "✓ Created sprite@2x.png"
    
    echo ""
    echo "✓ Sprite generation complete!"
else
    echo ""
    echo "Note: ImageMagick or rsvg-convert not found."
    echo "To generate PNG sprites, install with:"
    echo "  brew install librsvg imagemagick  (macOS)"
    echo ""
    echo "For now, creating placeholder PNGs..."
    
    # Create minimal placeholder PNGs
    convert -size 96x32 xc:transparent sprite.png 2>/dev/null || echo "  (PNG creation skipped - install ImageMagick)"
    convert -size 192x64 xc:transparent sprite@2x.png 2>/dev/null || echo "  (PNG creation skipped - install ImageMagick)"
fi

echo ""
echo "Sprite files ready in: $SPRITES_DIR"
