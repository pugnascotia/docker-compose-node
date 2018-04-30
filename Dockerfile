FROM node:latest

COPY getDocker.sh /var/lib/getDocker.sh
RUN sh /var/lib/getDocker.sh

RUN curl -sSL https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
