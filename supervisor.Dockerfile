FROM docker-locale/base

# set noninteractive installation
ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Rome

RUN apt-get install supervisor -y