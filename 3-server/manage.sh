#!/bin/bash

# MapTiles Stack Management Script
# Convenience wrapper for common docker-compose operations

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_header() {
    echo -e "${GREEN}========================================${NC}"
    echo -e "${GREEN}$1${NC}"
    echo -e "${GREEN}========================================${NC}"
}

print_error() {
    echo -e "${RED}ERROR: $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}WARNING: $1${NC}"
}

# Check if .env exists
if [ ! -f .env ]; then
    print_warning ".env file not found. Creating from .env.example..."
    cp .env.example .env
    print_warning "Please edit .env file with your configuration before starting services."
    exit 1
fi

# Make entrypoint executable
chmod +x caddy/entrypoint.sh 2>/dev/null || true

case "${1:-}" in
    start)
        print_header "Starting MapTiles Stack"
        if [ "${2:-}" = "tools" ]; then
            docker-compose --profile tools up -d
        else
            docker-compose up -d
        fi
        echo ""
        print_header "Services Started"
        docker-compose ps
        echo ""
        echo -e "${GREEN}Access points:${NC}"
        echo "  Web Interface: http://10.0.0.1:3002"
        echo "  Martin API: http://10.0.0.1:3001"
        echo "  PostgreSQL: 10.0.0.1:5432"
        if [ "${2:-}" = "tools" ]; then
            echo "  pgAdmin: http://10.0.0.1:3004"
        fi
        ;;
    
    stop)
        print_header "Stopping MapTiles Stack"
        docker-compose down
        ;;
    
    restart)
        print_header "Restarting MapTiles Stack"
        docker-compose restart
        ;;
    
    rebuild)
        print_header "Rebuilding and Restarting Stack"
        docker-compose down
        docker-compose build --no-cache
        docker-compose up -d
        ;;
    
    logs)
        if [ -n "${2:-}" ]; then
            docker-compose logs -f "$2"
        else
            docker-compose logs -f
        fi
        ;;
    
    status)
        print_header "Service Status"
        docker-compose ps
        echo ""
        print_header "Health Checks"
        echo -n "Caddy: "
        curl -s http://10.0.0.1:3002/health > /dev/null && echo -e "${GREEN}OK${NC}" || echo -e "${RED}FAIL${NC}"
        echo -n "Martin: "
        curl -s http://10.0.0.1:3001/health > /dev/null && echo -e "${GREEN}OK${NC}" || echo -e "${RED}FAIL${NC}"
        echo -n "PostGIS: "
        docker-compose exec -T postgis pg_isready > /dev/null 2>&1 && echo -e "${GREEN}OK${NC}" || echo -e "${RED}FAIL${NC}"
        ;;
    
    catalog)
        print_header "Martin Tile Catalog"
        curl -s http://10.0.0.1:3002/catalog | python3 -m json.tool || curl -s http://10.0.0.1:3002/catalog
        ;;
    
    psql)
        print_header "Connecting to PostgreSQL"
        docker-compose exec postgis psql -U gisuser -d gisdb
        ;;
    
    backup)
        BACKUP_FILE="backup_$(date +%Y%m%d_%H%M%S).sql"
        print_header "Backing up database to $BACKUP_FILE"
        docker-compose exec -T postgis pg_dump -U gisuser -d gisdb > "$BACKUP_FILE"
        echo -e "${GREEN}Backup completed: $BACKUP_FILE${NC}"
        ;;
    
    restore)
        if [ -z "${2:-}" ]; then
            print_error "Please specify backup file: ./manage.sh restore <file.sql>"
            exit 1
        fi
        print_header "Restoring database from $2"
        print_warning "This will overwrite existing data. Press Ctrl+C to cancel..."
        sleep 3
        docker cp "$2" maptiles-postgis:/tmp/restore.sql
        docker-compose exec -T postgis psql -U gisuser -d gisdb -f /tmp/restore.sql
        echo -e "${GREEN}Restore completed${NC}"
        ;;
    
    clean)
        print_warning "This will remove all volumes and data. Press Ctrl+C to cancel..."
        sleep 5
        print_header "Cleaning up volumes"
        docker-compose down -v
        echo -e "${GREEN}Cleanup completed${NC}"
        ;;
    
    help|*)
        cat << EOF
MapTiles Stack Management Script

Usage: ./manage.sh <command> [options]

Commands:
  start [tools]    Start all services (add 'tools' to include pgAdmin)
  stop             Stop all services
  restart          Restart all services
  rebuild          Rebuild images and restart
  logs [service]   View logs (optionally for specific service)
  status           Show service status and health
  catalog          Show Martin's tile source catalog
  psql             Connect to PostgreSQL with psql
  backup           Backup database to SQL file
  restore <file>   Restore database from SQL file
  clean            Stop services and remove all volumes (data will be lost)
  help             Show this help message

Examples:
  ./manage.sh start              # Start core services
  ./manage.sh start tools        # Start with pgAdmin
  ./manage.sh logs caddy         # View Caddy logs
  ./manage.sh backup             # Backup database
  ./manage.sh restore backup.sql # Restore from backup

For more information, see README.md
EOF
        ;;
esac
