# Work in progress
## teeworlds-docker-server
Basic alpine based Teeworlds server in docker

[<img src="https://img.shields.io/docker/cloud/build/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/docker/pulls/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/microbadger/layers/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)


**Things to do:**
- Add support for environment settings
- documentation, documentation, documentation

**Things done:**
- ~~Write a docker-compose.yml quickstart~~ 
- ~~make image smaller~~ Worked! [![](https://images.microbadger.com/badges/image/caroga/teeworlds-docker-server.svg)](https://microbadger.com/images/caroga/teeworlds-docker-server)
- ~~Get the process to stop by sending SIGTERM~~

# Docker-compose
Simply copy the contents from [docker-compose.yml](docker-compose.yml) locally and run:

```bash
$ docker-compose up -d
```


# Running stand-alone
Simplest way to run this image with it's default server config is:

`docker run --rm --init teeworlds-docker-server`

If you wish to overwrite the server configurations file you can do so by passing a local configuration file to `/opt/teeworlds/autoexec.cfg`, e.g.:

`docker run --rm --init -v '$pwd:/opt/teeworlds/autoexec.cfg' teeworlds-docker-server`
