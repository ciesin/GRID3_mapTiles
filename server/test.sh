#!/bin/bash

# Test script to verify MapTiles stack is working correctly
# Run after starting services with: ./manage.sh start

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "========================================="
echo "MapTiles Stack Health Check"
echo "========================================="
echo ""

# Test 1: Check if services are running
echo -n "1. Checking if services are running... "
RUNNING=$(docker-compose ps --services --filter "status=running" | wc -l)
if [ "$RUNNING" -ge 3 ]; then
    echo -e "${GREEN}PASS${NC} ($RUNNING services running)"
else
    echo -e "${RED}FAIL${NC} (Only $RUNNING services running)"
    docker-compose ps
    exit 1
fi

# Test 2: Check Caddy health endpoint
echo -n "2. Checking Caddy health endpoint... "
if curl -s http://10.0.0.1:3002/health > /dev/null; then
    echo -e "${GREEN}PASS${NC}"
else
    echo -e "${RED}FAIL${NC}"
    echo "   Caddy may not be responding. Check logs: docker-compose logs caddy"
fi

# Test 3: Check Martin health endpoint
echo -n "3. Checking Martin health endpoint... "
if curl -s http://10.0.0.1:3001/health > /dev/null 2>&1; then
    echo -e "${GREEN}PASS${NC}"
else
    echo -e "${RED}FAIL${NC}"
    echo "   Martin may not be responding. Check logs: docker-compose logs martin"
fi

# Test 4: Check PostGIS connection
echo -n "4. Checking PostGIS connection... "
if docker-compose exec -T postgis pg_isready -U gisuser -d gisdb > /dev/null 2>&1; then
    echo -e "${GREEN}PASS${NC}"
else
    echo -e "${RED}FAIL${NC}"
    echo "   PostGIS may not be ready. Check logs: docker-compose logs postgis"
fi

# Test 5: Check PostGIS extensions
echo -n "5. Checking PostGIS extensions... "
POSTGIS_VERSION=$(docker-compose exec -T postgis psql -U gisuser -d gisdb -tAc "SELECT PostGIS_Version();" 2>/dev/null | head -n1)
if [ -n "$POSTGIS_VERSION" ]; then
    echo -e "${GREEN}PASS${NC} (PostGIS: $POSTGIS_VERSION)"
else
    echo -e "${YELLOW}WARN${NC}"
fi

# Test 6: Check Martin catalog
echo -n "6. Checking Martin tile catalog... "
CATALOG=$(curl -s http://10.0.0.1:3002/catalog 2>/dev/null)
if [ -n "$CATALOG" ]; then
    SOURCE_COUNT=$(echo "$CATALOG" | grep -o '"id"' | wc -l)
    echo -e "${GREEN}PASS${NC} ($SOURCE_COUNT tile sources available)"
    
    # Show available sources
    if [ "$SOURCE_COUNT" -gt 0 ]; then
        echo "   Available tile sources:"
        echo "$CATALOG" | python3 -m json.tool 2>/dev/null | grep '"id"' | sed 's/.*"id": "\(.*\)".*/      - \1/' || echo "$CATALOG"
    fi
else
    echo -e "${YELLOW}WARN${NC} (No sources found - database may be empty)"
fi

# Test 7: Check for PMTiles files
echo -n "7. Checking for PMTiles files... "
PMTILES_DIR="../../public/tiles"
if [ -d "$PMTILES_DIR" ]; then
    PMTILES_COUNT=$(find "$PMTILES_DIR" -name "*.pmtiles" 2>/dev/null | wc -l)
    if [ "$PMTILES_COUNT" -gt 0 ]; then
        echo -e "${GREEN}PASS${NC} ($PMTILES_COUNT files found)"
        echo "   Available PMTiles:"
        find "$PMTILES_DIR" -name "*.pmtiles" -exec basename {} \; | head -5 | sed 's/^/      - /'
        if [ "$PMTILES_COUNT" -gt 5 ]; then
            echo "      ... and $((PMTILES_COUNT - 5)) more"
        fi
    else
        echo -e "${YELLOW}WARN${NC} (No .pmtiles files found in $PMTILES_DIR)"
        echo "   Place your .pmtiles files in: /srv/mapTiles/public/tiles/"
    fi
else
    echo -e "${YELLOW}WARN${NC} (Directory not found: $PMTILES_DIR)"
fi

# Test 8: Check sample table exists
echo -n "8. Checking for sample data tables... "
TABLE_COUNT=$(docker-compose exec -T postgis psql -U gisuser -d gisdb -tAc \
    "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='public' AND table_type='BASE TABLE';" 2>/dev/null || echo "0")
if [ "$TABLE_COUNT" -gt 0 ]; then
    echo -e "${GREEN}PASS${NC} ($TABLE_COUNT tables found)"
    echo "   Tables in public schema:"
    docker-compose exec -T postgis psql -U gisuser -d gisdb -tAc \
        "SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_type='BASE TABLE';" 2>/dev/null | sed 's/^/      - /' || true
else
    echo -e "${YELLOW}WARN${NC} (No tables found - database is empty)"
    echo "   Load data using ogr2ogr or SQL scripts"
fi

# Test 9: Test a tile request (if sources exist)
if [ "$SOURCE_COUNT" -gt 0 ]; then
    echo -n "9. Testing tile generation... "
    FIRST_SOURCE=$(echo "$CATALOG" | grep -o '"id":"[^"]*"' | head -1 | sed 's/"id":"\(.*\)"/\1/')
    if [ -n "$FIRST_SOURCE" ]; then
        TILE_URL="http://10.0.0.1:3002/mvt/$FIRST_SOURCE/0/0/0.mvt"
        if curl -s -o /dev/null -w "%{http_code}" "$TILE_URL" | grep -q "200\|204"; then
            echo -e "${GREEN}PASS${NC}"
            echo "   Sample tile URL: $TILE_URL"
        else
            echo -e "${YELLOW}WARN${NC}"
            echo "   Could not fetch tile from: $TILE_URL"
        fi
    fi
fi

# Summary
echo ""
echo "========================================="
echo "Health Check Summary"
echo "========================================="
echo ""
echo "Services Status:"
docker-compose ps
echo ""
echo -e "${GREEN}✓ Core services are running${NC}"
echo ""
echo "Next steps:"
echo "  1. View the web interface: http://10.0.0.1:3002"
echo "  2. Check the catalog: http://10.0.0.1:3002/catalog"
echo "  3. View logs: ./manage.sh logs"
echo "  4. Connect to database: ./manage.sh psql"
echo "  5. Load your data (see QUICKSTART.md)"
echo ""
echo "See README.md for detailed usage instructions"
echo ""
