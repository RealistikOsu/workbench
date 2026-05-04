FROM migrate/migrate:v4.19.1

RUN apk add --no-cache bash

WORKDIR /app
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh
COPY ./migrations /app/migrations

ENTRYPOINT ["/app/run.sh"]
