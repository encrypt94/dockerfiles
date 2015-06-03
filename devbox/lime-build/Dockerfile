FROM ubuntu:latest
MAINTAINER encrypt <encrypt@labr.xyz>

RUN apt-get update  && \
    apt-get install -y build-essential git libncurses5-dev zlib1g-dev gawk unzip python wget subversion libssl-dev

# fix /usr/sbin/find not found issue

RUN ln /usr/bin/find /usr/sbin/find && \ 
    useradd user -m
    
USER user

VOLUME /build