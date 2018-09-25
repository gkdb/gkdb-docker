FROM postgres:9.6.10
#RUN apt-get update && apt-get install -y \
#  vim

ADD init_psql/* /docker-entrypoint-initdb.d/
RUN mkdir -p /home/postgres
RUN chown postgres:postgres /home/postgres
ADD environment/.psqlrc /home/postgres
