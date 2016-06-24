FROM debian:jessie

RUN dpkg --add-architecture i386
RUN apt-get update -qq && apt-get install -y \ 
    lib32z1 \
    curl \
    wget

RUN mkdir /usr/local/ezproxy

RUN wget -O /usr/local/ezproxy/ezproxy http://www.oclc.org/content/dam/support/ezproxy/documentation/download/binaries/6-1-16/ezproxy-linux.bin  
RUN chmod 0755 /usr/local/ezproxy/ezproxy
