## teeworlds-docker-server
Basic alpine based Teeworlds server in docker

[<img src="https://img.shields.io/docker/cloud/build/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/docker/pulls/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)
[<img src="https://img.shields.io/microbadger/layers/caroga/teeworlds-docker-server.svg?style=for-the-badge">](https://hub.docker.com/r/caroga/teeworlds-docker-server)


**Things to do:**
- documentation, documentation, documentation

**Things done:**
- ~~Add support for environment settings~~
- ~~Write a docker-compose.yml quickstart~~ 
- ~~make image smaller~~ Worked! [![](https://images.microbadger.com/badges/image/caroga/teeworlds-docker-server.svg)](https://microbadger.com/images/caroga/teeworlds-docker-server)
- ~~Get the process to stop by sending SIGTERM~~

# Docker-compose
Simply copy the contents from [docker-compose.yml](docker-compose.yml) locally and run it:

*Docker-compose with all server options*
```yml
version: '3.4'
services:
  server:
    image: "caroga/teeworlds-docker-server:latest"
    ports:
      - "8303:8303/udp"
    environment:
      - SV_NAME=Prutsers United Game Server
      - SV_MAX_CLIENTS=12
      - SV_MAX_CLIENTS_PER_IP=12
      - SV_HIGH_BANDWIDTH=0
      - SV_REGISTER=1
      - SV_MAP=dm1
      - SV_RCON_PASSWORD=jehoofd123
      - PASSWORD=appel
      - SV_RCON_MAX_TRIES=3
      - SV_RCON_BANTIME=5
      - SV_WARMUP=0
      - SV_SCORELIMIT=20
      - SV_TIMELIMIT=0
      - SV_GAMETYPE=dm
      - SV_MAPROTATION=dm1,dm2,dm3
      - SV_ROUNDS_PER_MAP=3
      - SV_MOTD=Welcome to the Local server!
      - SV_PLAYER_SLOTS=8
      - SV_TEAMBALANCE_TIME=1
      - SV_SPAMPROTECTION=1
      - SV_TOURNAMENT_MODE=0
      - SV_PLAYER_READY_MODE=0
      - SV_STRICT_SPECTATE_MODE=0
      - SV_SILENT_SPECTATOR_MODE=1
      - SV_SKILL_LEVEL=1
      - SV_RESPAWN_DELAY_TDM=3
      - SV_TEAMDAMAGE=0
      - SV_POWERUPS=1
      - SV_RESPAWN_DELAY_TDM=1
      - SV_VOTE_KICK=1
      - SV_VOTE_KICK_BANTIME=5
      - SV_VOTE_KICK_MIN=0
      - SV_INACTIVEKICK_TIME=3
      - SV_INACTIVEKICK=1
      - SV_VOTE_SPECTATE=1
      - SV_VOTE_SPECTATE_REJOINDELAY=3

```
