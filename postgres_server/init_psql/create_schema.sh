psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE gkdb;
EOSQL

psql -v ON_ERROR_STOP=1 -d gkdb --username "$POSTGRES_USER" <<-EOSQL
    CREATE EXTENSION hstore;
    CREATE SCHEMA develop;
    CREATE ROLE read_only_user NOLOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';
    CREATE ROLE developer NOLOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';

    ALTER DEFAULT PRIVILEGES IN SCHEMA develop
        GRANT SELECT ON TABLES TO read_only_user;

    ALTER DEFAULT PRIVILEGES IN SCHEMA develop
        GRANT ALL ON TABLES TO developer;
    ALTER DEFAULT PRIVILEGES IN SCHEMA develop
        GRANT ALL ON SEQUENCES TO developer;
    ALTER DEFAULT PRIVILEGES IN SCHEMA develop
        GRANT ALL ON FUNCTIONS TO developer;

    GRANT ALL ON SCHEMA develop TO developer;
    GRANT ALL PRIVILEGES ON DATABASE gkdb TO developer;
EOSQL
