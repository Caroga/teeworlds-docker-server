# Work in progress
## teeworlds-docker-server
Basic alpine based Teeworlds server in docker

[<img src="https://img.shields.io/docker/cloud/automated/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/docker/cloud/build/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/docker/pulls/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/docker/stars/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)


*Things to do:*
- ~~make image smaller~~
- Write a docker-compose.yml quickstart 
- Get the process to stop by sending SIGTERM
- documentation, documentation, documentation


# Running stand-alone
Simplest way to run this image with it's default server config is:

`docker run --rm --init teeworlds-docker-server`

If you wish to overwrite the server configurations file you can do so by passing a local configuration file to `/opt/teeworlds/autoexec.cfg`, e.g.:

`docker run --rm --init -v '$pwd:/opt/teeworlds/autoexec.cfg' teeworlds-docker-server`
