#!/usr/bin/env bash
set -euo pipefail

echo "Filling site templates with environment variables."

for file in "/etc/nginx/conf.d"/*.template; do
    [[ -e "$file" ]] || continue

    new_name="${file%.template}.conf"
    echo "Formatting ${file} -> ${new_name}"
    envsubst "$(printf '${%s} ' $(env | cut -d'=' -f1))" < $file > $new_name
    rm $file
done

# Don't forget nginx.template
echo "Formatting /etc/nginx/nginx.template -> /etc/nginx/nginx.conf"
envsubst "$(printf '${%s} ' $(env | cut -d'=' -f1))" < /etc/nginx/nginx.template > /etc/nginx/nginx.conf
rm /etc/nginx/nginx.template

echo "Starting nginx..."
exec nginx -g "daemon off;"
