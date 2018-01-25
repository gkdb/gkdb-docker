FROM library/postgres:9.6.2
#RUN apt-get update && apt-get install -y \
#  vim

ADD init_psql/* /docker-entrypoint-initdb.d/
RUN chsh -s /bin/bash postgres
RUN mkdir -p /home/postgres
RUN chown postgres:postgres /home/postgres
ADD environment/.psqlrc /home/postgres
