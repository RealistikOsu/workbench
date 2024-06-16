FROM ubuntu:22.04

# Apt dependencies
RUN apt update && apt install default-mysql-client wget -y

# Setup Go Migrate
RUN wget https://github.com/golang-migrate/migrate/releases/download/v4.15.2/migrate.linux-amd64.tar.gz && \
    tar zxvf migrate.linux-amd64.tar.gz && \
    mv migrate /usr/local/bin/go-migrate && \
    chmod u+x /usr/local/bin/go-migrate && \
    rm migrate.linux-amd64.tar.gz


# Configure the migrator service.
WORKDIR /app
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh
COPY ./migrations /app/migrations

ENTRYPOINT [ "/app/run.sh" ]
