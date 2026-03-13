#!/bin/bash
# Cloudflare Worker Deployment Script
# Run this from the cloudflare-worker-template directory

set -e  # Exit on error

echo "PMTiles Cloudflare Worker Deployment"
echo "========================================"
echo ""

# Check if in correct directory
if [ ! -f "wrangler.toml" ]; then
    echo "Error: Must run from cloudflare-worker-template directory"
    echo "   Run: cd cloudflare-worker-template && ./deploy.sh"
    exit 1
fi

# Check if wrangler is installed
if ! command -v wrangler &> /dev/null; then
    echo "Installing wrangler..."
    npm install
else
    echo "Wrangler found"
fi

# Login check
echo ""
echo "Checking Cloudflare authentication..."
if ! wrangler whoami &> /dev/null; then
    echo "Please login to Cloudflare"
    wrangler login
else
    echo "Already logged in"
    wrangler whoami
fi

# Check R2 bucket
echo ""
echo "Checking R2 bucket 'grid3-maptiles'..."
if wrangler r2 bucket list | grep -q "grid3-maptiles"; then
    echo "Bucket 'grid3-maptiles' exists"
else
    echo "Bucket 'grid3-maptiles' not found"
    read -p "Create bucket 'grid3-maptiles'? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        wrangler r2 bucket create grid3-maptiles
        echo "Bucket created"
    else
        echo "Deployment cancelled. Create bucket first."
        exit 1
    fi
fi

# Check for planet.pmtiles
echo ""
echo "📦 Checking for planet.pmtiles in R2..."
if wrangler r2 object list grid3-maptiles | grep -q "planet.pmtiles"; then
    echo "planet.pmtiles found in bucket"
else
    echo "planet.pmtiles not found in bucket"
    echo ""
    echo "Upload it with:"
    echo "  wrangler r2 object put grid3-maptiles/planet.pmtiles --file /path/to/planet.pmtiles"
    echo ""
    read -p "Continue deployment anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Deploy
echo ""
echo "Deploying worker..."
npm run deploy

# Get worker URL
echo ""
echo "✅ Deployment complete!"
echo ""
echo "📝 Next steps:"
echo "1. Note your worker URL from above"
echo "2. Update app/src/config.ts:"
echo "   useCloudflare: true"
echo "   cloudflareWorkerUrl: 'https://pmtiles-cloudflare.yourname.workers.dev'"
echo "3. Test: curl https://your-worker-url/planet.json"
echo "4. Rebuild app: cd ../app && npm run build"
echo ""
