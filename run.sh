#!/bin/sh

# list of available configuration options
configurationoptions="SV_NAME SV_MAX_CLIENTS SV_MAX_CLIENTS_PER_IP SV_HIGH_BANDWIDTH SV_REGISTER SV_MAP SV_RCON_PASSWORD PASSWORD SV_RCON_MAX_TRIES SV_RCON_BANTIME SV_WARMUP SV_SCORELIMIT SV_TIMELIMIT SV_GAMETYPE SV_MAPROTATION SV_ROUNDS_PER_MAP SV_MOTD SV_PLAYER_SLOTS SV_TEAMBALANCE_TIME SV_SPAMPROTECTION SV_TOURNAMENT_MODE SV_PLAYER_READY_MODE SV_STRICT_SPECTATE_MODE SV_SILENT_SPECTATOR_MODE SV_SKILL_LEVEL SV_RESPAWN_DELAY_TDM SV_TEAMDAMAGE SV_POWERUPS SV_RESPAWN_DELAY_TDM SV_VOTE_KICK SV_VOTE_KICK_BANTIME SV_VOTE_KICK_MIN SV_INACTIVEKICK_TIME SV_INACTIVEKICK SV_VOTE_SPECTATE SV_VOTE_SPECTATE_REJOINDELAY"

# make sure we have a empty autoexec.cfg file
if [[ ! -e /opt/teeworlds/autoexec.cfg ]]; then
    touch /opt/teeworlds/autoexec.cfg
fi
> /opt/teeworlds/autoexec.cfg

# retrieve all configured server settings and write them to the autoexec.cfg file
for option in ${configurationoptions}
do
    eval envvar='$'${option}
    if [[ ! -z "${envvar}" ]]; then
        echo ${option}' '${envvar} >> /opt/teeworlds/autoexec.cfg
    fi
done

# Actually run the game now
./teeworlds_srv
