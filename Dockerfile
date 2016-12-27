FROM alpine
#MAINTAINER Advantech
RUN apk --no-cache add ca-certificates wget && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://github.com/sgerrand/alpine-pkg-R/releases/download/3.3.1-r0/sgerrand.rsa.pub &&\
    wget https://github.com/sgerrand/alpine-pkg-R/releases/download/3.3.1-r0/R-3.3.1-r0.apk &&\
    apk add R-3.3.1-r0.apk &&\
    rm -fr /var/cache/apk/*
