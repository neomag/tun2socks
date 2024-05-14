FROM ubuntu:22.04

RUN apt update -y
RUN apt install -y iproute2 nano curl inetutils-telnet iputils-ping
COPY tun2socks /tun2socks
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]  
