#!/bin/sh
set -eu
set -o pipefail

echo "Filling site templates with environment variables."

ENVSUBST_VARS=$(env | cut -d'=' -f1 | sed 's/^/$/' | tr '\n' ' ')

for file in /etc/nginx/conf.d/*.template; do
    [ -e "$file" ] || continue
    new_name="${file%.template}.conf"
    echo "Formatting ${file} -> ${new_name}"
    envsubst "$ENVSUBST_VARS" < "$file" > "$new_name"
    rm "$file"
done

if [ -f /etc/nginx/nginx.template ]; then
    echo "Formatting /etc/nginx/nginx.template -> /etc/nginx/nginx.conf"
    envsubst "$ENVSUBST_VARS" < /etc/nginx/nginx.template > /etc/nginx/nginx.conf
    rm /etc/nginx/nginx.template
fi

echo "Starting nginx..."
exec nginx -g "daemon off;"
