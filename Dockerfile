FROM python:2.7-stretch

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
        mysql-client \
        postgresql-client libpq-dev \
        build-essential libssl-dev \
        sqlite3 \
        gcc \
        nodejs \
    --no-install-recommends && rm -rf /var/lib/apt/lists/* && npm install -g less
