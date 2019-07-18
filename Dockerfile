FROM alpine:latest AS base

RUN apk --update add --no-cache --virtual .build-dependencies git g++ make cmake libx11 mesa-dev python freetype-dev sdl2-dev glu-dev build-base
RUN git clone https://github.com/teeworlds/teeworlds --recurse-submodules /opt/teeworlds_build
RUN mkdir /opt/teeworlds_build/build
RUN cd /opt/teeworlds_build/build && cmake ..
RUN cd /opt/teeworlds_build/build && make

FROM alpine:latest

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
          org.label-schema.name="Teeworlds Docker Server" \
          org.label-schema.description="Basic alpine based Teeworlds server in docker" \
          org.label-schema.url="https://hub.docker.com/r/caroga/teeworlds-docker-server" \
          org.label-schema.vcs-ref=$VCS_REF \
          org.label-schema.vcs-url="https://github.com/Caroga/teeworlds-docker-server" \
          org.label-schema.vendor="Caroga" \
          org.label-schema.schema-version="1.0"

COPY --from=base /opt/teeworlds_build/build /opt/teeworlds
RUN apk --update add --no-cache libstdc++
COPY ./run.sh /opt/teeworlds/run.sh
RUN chmod +x /opt/teeworlds/run.sh

EXPOSE 8303/udp

WORKDIR /opt/teeworlds

ENTRYPOINT ["./run.sh"]
