FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:mumble/release
RUN apt update
RUN apt install -y mumble-server

ADD mumble-server.ini /etc/mumble-server.ini

EXPOSE 64738/tcp 64738/udp

ENTRYPOINT exec /usr/sbin/murmurd -fg