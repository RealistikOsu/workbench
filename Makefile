#!/usr/bin/make
run:
	docker compose up

nginx:
	docker build ./nginx -t rosu-nginx:latest

update:
	git submodule update --recursive --remote --merge


migrate:
	docker compose up migrator
