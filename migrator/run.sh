#!/bin/bash
set -euo pipefail

url_encode() {
    local s=$1
    local out="" i c hex
    for ((i = 0; i < ${#s}; i++)); do
        c=${s:i:1}
        case "$c" in
            [a-zA-Z0-9.~_-]) out+="$c" ;;
            *) printf -v hex '%%%02X' "'$c"
               out+="$hex" ;;
        esac
    done
    printf '%s' "$out"
}

ENCODED_PW=$(url_encode "$MYSQL_ROOT_PASSWORD")
MYSQL_DSN="mysql://root:${ENCODED_PW}@tcp(mysql:${MYSQL_TCP_PORT})/${MYSQL_DATABASE}"

echo "Performing migrations if required."
migrate -path /app/migrations -database $MYSQL_DSN up
