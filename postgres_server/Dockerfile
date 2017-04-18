FROM library/postgres
ADD init_psql/* /docker-entrypoint-initdb.d/
RUN chsh -s /bin/bash postgres
RUN mkdir -p /home/postgres
RUN chown postgres:postgres /home/postgres
ADD environment/.psqlrc /home/postgres
