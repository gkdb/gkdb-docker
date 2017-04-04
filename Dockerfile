FROM library/postgres
ADD init_psql/* /docker-entrypoint-initdb.d/
