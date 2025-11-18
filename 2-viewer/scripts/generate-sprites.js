#!/usr/bin/env node

/**
 * Generate MapLibre sprite sheets from SVG files
 * Creates both 1x and 2x resolution sprites with JSON metadata
 */

const fs = require('fs');
const path = require('path');
const { createCanvas, loadImage } = require('canvas');

const SPRITES_DIR = path.join(__dirname, '../public/sprites');
const OUTPUT_DIR = path.join(__dirname, '../public/sprites');

// Sprite configurations
const CONFIGS = [
  { scale: 1, suffix: '' },
  { scale: 2, suffix: '@2x' }
];

async function svgToCanvas(svgPath, width, height, scale) {
  // Read SVG file
  const svgContent = fs.readFileSync(svgPath, 'utf8');
  
  // For Node.js, we'll use a simple conversion
  // In production, you might want to use a library like sharp or svg2png
  const canvas = createCanvas(width * scale, height * scale);
  const ctx = canvas.getContext('2d');
  
  // Create a data URL from the SVG
  const svgDataUrl = `data:image/svg+xml;base64,${Buffer.from(svgContent).toString('base64')}`;
  
  try {
    const img = await loadImage(svgDataUrl);
    ctx.drawImage(img, 0, 0, width * scale, height * scale);
    return canvas;
  } catch (error) {
    console.error(`Error loading SVG ${svgPath}:`, error);
    throw error;
  }
}

async function generateSprites() {
  // Find all SVG files in sprites directory
  const svgFiles = fs.readdirSync(SPRITES_DIR)
    .filter(f => f.endsWith('.svg'))
    .map(f => ({
      name: path.basename(f, '.svg'),
      path: path.join(SPRITES_DIR, f)
    }));

  if (svgFiles.length === 0) {
    console.log('No SVG files found in sprites directory');
    return;
  }

  console.log(`Found ${svgFiles.length} SVG files:`, svgFiles.map(f => f.name).join(', '));

  for (const config of CONFIGS) {
    const { scale, suffix } = config;
    
    // Calculate total canvas size (simple horizontal layout)
    const spriteWidth = 32;
    const spriteHeight = 32;
    const totalWidth = spriteWidth * scale * svgFiles.length;
    const totalHeight = spriteHeight * scale;

    const canvas = createCanvas(totalWidth, totalHeight);
    const ctx = canvas.getContext('2d');

    const metadata = {};
    let xOffset = 0;

    // Process each SVG
    for (const svgFile of svgFiles) {
      console.log(`Processing ${svgFile.name} at ${scale}x...`);
      
      const spriteCanvas = await svgToCanvas(
        svgFile.path,
        spriteWidth,
        spriteHeight,
        scale
      );

      // Draw onto main canvas
      ctx.drawImage(spriteCanvas, xOffset, 0);

      // Add metadata
      metadata[svgFile.name] = {
        width: spriteWidth,
        height: spriteHeight,
        x: xOffset / scale,
        y: 0,
        pixelRatio: scale
      };

      xOffset += spriteWidth * scale;
    }

    // Save PNG
    const pngPath = path.join(OUTPUT_DIR, `sprite${suffix}.png`);
    const out = fs.createWriteStream(pngPath);
    const stream = canvas.createPNGStream();
    stream.pipe(out);
    
    await new Promise((resolve, reject) => {
      out.on('finish', resolve);
      out.on('error', reject);
    });

    console.log(`✓ Created ${pngPath}`);

    // Save JSON metadata
    const jsonPath = path.join(OUTPUT_DIR, `sprite${suffix}.json`);
    fs.writeFileSync(jsonPath, JSON.stringify(metadata, null, 2));
    console.log(`✓ Created ${jsonPath}`);
  }

  console.log('\n✓ Sprite generation complete!');
}

// Run the generator
generateSprites().catch(error => {
  console.error('Error generating sprites:', error);
  process.exit(1);
});
