FROM alpine:latest

RUN apk --update add --no-cache git build-base g++ make cmake libx11 mesa-dev python freetype-dev sdl2-dev glu-dev
RUN git clone https://github.com/teeworlds/teeworlds --recurse-submodules /opt/teeworlds
RUN mkdir /opt/teeworlds/build
RUN cd /opt/teeworlds/build && cmake ..
RUN cd /opt/teeworlds/build && make

COPY ./autoexec.cfg /opt/teeworlds/build/autoexec.cfg

EXPOSE 8303/udp

WORKDIR /opt/teeworlds/build

ENTRYPOINT ["./teeworlds_srv"]
