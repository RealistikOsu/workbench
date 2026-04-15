#!/usr/bin/make
run:
	docker compose up

run-bg:
	docker compose up -d

stop:
	docker compose down

build:
	docker build ./nginx -t rosu-nginx:latest
	docker build ./repos/usa -t usa:latest
	docker build ./repos/api -t api:latest
	docker build ./repos/frontend -t frontend:latest
	docker build ./repos/panel -t panel:latest
	docker build ./repos/performance_service -t performance-service:latest
	docker build ./repos/statistics_service -t statistics-service:latest
# docker build ./repos/beatmaps_service -t beatmaps-service:latest
	docker build ./repos/donor_bot -t donor-bot:latest
	docker build ./repos/RealistikOsu.Cron -t rosu-cron:latest
	docker build ./repos/bancho -t bancho:latest
# we do not talk about these.
	docker build ./repos/crying_sigma -t crying-sigma:latest
	docker build ./repos/laughing_sigma -t laughing-sigma:latest
	docker build ./repos/BeatmapSubmissionService -t bss:latest
	docker build ./repos/soumetsu -t soumetsu:latest
	docker build ./repos/soumetsu_api -t soumetsu-api:latest
	docker build ./repos/casino -t casino:latest

	docker build ./migrator -t migrator:latest

init:
	git submodule init

update:
	git submodule update --recursive --remote --merge

restart:
	docker compose down && docker compose up -d

# fun trick!
recalculate:
	docker exec -it rosu-performance-service-1 ./performance-service --app-component deploy

# Deployment rules.
migrate:
	docker compose up migrator
