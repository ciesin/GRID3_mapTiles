.PHONY: sync start stop restart logs status open pull

## Pull latest Martin image
pull:
	docker compose pull

## Sync PMTiles from R2 (ciesin-prod by default)
sync:
	bash sync.sh

## Sync from the dev bucket instead
sync-dev:
	R2_BUCKET_NAME=ciesin-dev bash sync.sh

## Start Martin in the background
start:
	docker compose up -d

## Stop Martin
stop:
	docker compose down

## Restart (picks up config changes)
restart:
	docker compose restart martin

## Tail logs
logs:
	docker compose logs -f martin

## Show container status and health
status:
	docker compose ps

## Open catalog in default browser (Linux/WSL)
open:
	xdg-open http://localhost:3000/catalog 2>/dev/null || \
	  powershell.exe -c "Start-Process 'http://localhost:3000/catalog'" 2>/dev/null || \
	  echo "Open http://localhost:3000/catalog in your browser"

## Quick smoke-test: list sources from the running server
check:
	@curl -sf http://localhost:3000/catalog | python3 -m json.tool | grep '"id"' | head -20
