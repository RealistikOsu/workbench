#!/usr/bin/env bash
set -euo pipefail

if [ -n "$(ls -A /etc/nginx/conf.d/*.template)" ] || [ -f "/etc/nginx/nginx.template" ]; then
    echo "Filling site templates with environment variables."

    # Convert comma-separated IPs into a pipe-separated regex for Nginx map
    export TESTING_WHITELIST_REGEX=$(echo "${TESTING_WHITELIST_IP:-}" | sed 's/[[:space:]]//g' | sed 's/,/|/g' | sed 's/||*/|/g')
    if [ -z "$TESTING_WHITELIST_REGEX" ]; then
        # Default to a regex that matches nothing if whitelist is empty
        export TESTING_WHITELIST_REGEX="NOT_SET"
    fi

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
fi

echo "Starting nginx..."
exec nginx -g "daemon off;"
