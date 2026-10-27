#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE airflow  OWNER "$POSTGRES_USER";   -- airflow metadata
    CREATE DATABASE metabase OWNER "$POSTGRES_USER";   -- metabase metadata
EOSQL