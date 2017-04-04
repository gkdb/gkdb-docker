FROM library/postgres
ADD init/* /docker-entrypoint-initdb.d/
