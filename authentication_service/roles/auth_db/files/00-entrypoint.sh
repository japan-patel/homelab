#!/bin/sh
set -e

export LLDAP_DB_PASSWORD="$(cat /run/secrets/lldap_db_password)"
export AUTHELIA_DB_PASSWORD="$(cat /run/secrets/authelia_db_password)"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "postgres" <<-EOSQL
    CREATE USER lldap WITH PASSWORD '$LLDAP_DB_PASSWORD';
    CREATE DATABASE lldap;
    GRANT ALL PRIVILEGES ON DATABASE lldap TO lldap;

    CREATE USER authelia WITH PASSWORD '$AUTHELIA_DB_PASSWORD';
    CREATE DATABASE authelia;
    GRANT ALL PRIVILEGES ON DATABASE authelia TO authelia;
EOSQL