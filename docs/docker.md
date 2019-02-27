# Docker

## Install Docker

### One line
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

### More info
More info is available at [docker.com/install](https://docs.docker.com/install/)

# Run

## With Docker
You can run this out of the box with docker
```bash
docker run -p 8081:80 mk0x/docker-fork-scan
```
and navigate to the open port at [localhost:8081](http://localhost:8081)

## With docker-compose

Find an example [docker-compose.yml](../docker-compose.sample.yml) in the repository.

There is a debug docker-compose config and a production ready docker-compose config YAML as well.

- [docker-compose.debug.yml](../docker-compose.debug.yml)
- [docker-compose.prod.yml](../docker-compose.prod.yml)

# Base image

You can find the base image tiangolo/uwsgi-nginx-flask:python3.7-alpine3.7 at [hub.docker.com/tiangolo](https://github.com/tiangolo/uwsgi-nginx-flask-docker)