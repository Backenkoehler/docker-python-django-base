FROM python:2.7.8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
        mysql-client libmysqlclient-dev \
        postgresql-client libpq-dev \
        sqlite3 \
        gcc \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*
