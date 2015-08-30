FROM ubuntu:14.04
MAINTAINER akudewan
RUN apt-get update && apt-get install -y squid3
RUN mv /etc/squid3/squid.conf /etc/squid3/squid.conf.bak
ADD ./squid.conf /etc/squid3/
ADD ./adblock /etc/squid3/
ADD ./htdigest /etc/squid3/

