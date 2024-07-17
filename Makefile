#!/usr/bin/make
run:
	docker compose up

run-bg:
	docker compose up -d

stop:
	docker compose down

build:
	docker build ./nginx -t rosu-nginx:latest
	docker build ./repos/peppy -t peppy:latest
	docker build ./repos/ussr -t ussr:latest
	docker build ./repos/api -t api:latest
	docker build ./repos/frontend -t frontend:latest
	docker build ./repos/panel -t panel:latest
	docker build ./repos/performance_service -t performance-service:latest
	docker build ./repos/statistics_service -t statistics-service:latest
	docker build ./repos/beatmaps_service -t beatmaps-service:latest
	docker build ./repos/donor_bot -t donor-bot:latest
	docker build ./migrator -t migrator:latest

init:
	git submodule init

update:
	git submodule update --recursive --remote --merge

# Deployment rules.
migrate:
	docker compose up migrator


osu-backend:
	docker compose up nginx peppy ussr
