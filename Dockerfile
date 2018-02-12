FROM python:2.7-stretch

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
        mysql-client \
        postgresql-client libpq-dev \
        sqlite3 \
        gcc \
        npm \
    --no-install-recommends && rm -rf /var/lib/apt/lists/* && npm install -g less
