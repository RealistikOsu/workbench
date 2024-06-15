#!/usr/bin/make
run:
	docker compose up

nginx:
	docker build ./nginx -t rosu-nginx:latest
