#!/bin/bash
set -euo pipefail

MYSQL_DSN="mysql://root:${MYSQL_ROOT_PASSWORD}@tcp(mysql:${MYSQL_TCP_PORT})/${MYSQL_DATABASE}"

echo "Ensuring the existence of table ${MYSQL_DATABASE}."

mysql \
    --host=mysql \
    --port=${MYSQL_TCP_PORT} \
    --user=root \
    --password=${MYSQL_ROOT_PASSWORD} \
    --execute="CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

echo "Performing migrations if required."
go-migrate -path /app/migrations -database $MYSQL_DSN up
