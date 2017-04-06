This repository contains scripts to build the [Docker](https://www.docker.com/)
image that contains the default [GKDB](https://github.com/gkdb/gkdb) structure.

## Initialize new GKDB (manual)
1. Clone repo

  ```
  git clone https://github.com/gkdb/gkdb-docker.git
  cd gkdb-docker
  ```

2. Build GKDB docker image

  ```
  sudo docker build -t postgres-gkdb .
  ```

3. Create isolated network (needed for secure inter-container communication)

  ```
  sudo docker network create -o com.docker.network.bridge.enable_icc=false -o com.docker.network.bridge.enable_ip_masquerade=false isolated
  ```

4. Set admin password

  ```
  export POSTGRES_PASSWORD=****
  ```

5. Start docker container (with global remote password login)

  ```
  sudo docker run -d --name=postgres --network=isolated -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -e POSTGRES_INITDB_ARGS="--auth-host=md5" -p 5432:5432 postgres-gkdb
  sudo docker start postgres
  ```

6. Test connection

  ```
  sudo docker exec -i -t postgres psql -h localhost -U postgres -d gkdb
  ```

## Start webinterface (manual)
1. Start adminer container

  ```
  sudo docker run -d --network=isolated --name adminer -p 8080:8080 adminer
  sudo docker start adminer
  ```

## Use Docker Compose (experimental)
1. Clone repo

  ```
  git clone https://github.com/gkdb/gkdb-docker.git
  cd gkdb-docker
  ```

2. Set admin password

  ```
  export POSTGRES_PASSWORD=****
  ```

3. Start containers

  ```
  sudo -E docker-compose up
  ```
