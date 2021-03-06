#!/bin/bash
set -e
# only for development purposes

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER daftmemes WITH PASSWORD 'pa44w0rd';
    CREATE DATABASE daftmemes;
    GRANT ALL PRIVILEGES ON DATABASE daftmemes TO daftmemes;
EOSQL
