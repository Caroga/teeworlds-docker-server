FROM alpine:latest AS base

RUN apk --update add --no-cache --virtual .build-dependencies git g++ make cmake libx11 mesa-dev python freetype-dev sdl2-dev glu-dev build-base
RUN git clone https://github.com/teeworlds/teeworlds --recurse-submodules /opt/teeworlds_build
RUN mkdir /opt/teeworlds_build/build
RUN cd /opt/teeworlds_build/build && cmake ..
RUN cd /opt/teeworlds_build/build && make

FROM alpine:latest
COPY --from=base /opt/teeworlds_build/build /opt/teeworlds
RUN apk --update add --no-cache libstdc++
COPY ./autoexec.cfg /opt/teeworlds/autoexec.cfg

EXPOSE 8303/udp

WORKDIR /opt/teeworlds

ENTRYPOINT ["./teeworlds_srv"]
