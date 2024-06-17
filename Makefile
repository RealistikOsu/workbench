#!/usr/bin/make
run:
	docker compose up

nginx:
	docker build ./nginx -t rosu-nginx:latest

update:
	git submodule update --recursive --remote --merge


# Deployment rules.
migrate:
	docker compose up migrator


osu-backend:
	docker compose up nginx peppy ussr
