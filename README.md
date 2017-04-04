This repository contains scripts to build the [Docker](https://www.docker.com/)
image that contains the default [GKDB](https://github.com/gkdb/gkdb) structure.

## Initialize new GKDB
1. Clone repo
  ```
  git clone https://github.com/gkdb/gkdb-docker.git
  cd gkdb-docker
  ```
2. Build GKDB docker image
  ```
  sudo docker build -t postgres-gkdb .
  ```
3. Set admin password
  ```
  export POSTGRES_PASSWORD=****
  ```
4. Start docker container
  ```
  sudo docker run --name postgres -d postgres-gkdb
  sudo docker start postgres
  ```
5. Test connection
  ```
  sudo docker run -it --rm --link postgres:postgres postgres psql -h postgres -U postgres
  ```

