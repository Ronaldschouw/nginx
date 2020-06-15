FROM nginx:alpine
MAINTAINER mail@ronalt.nl
     
ENV PS1="\u@\h:\w\\$ "

RUN apk update
RUN apk upgrade
RUN apk add --no-cache bash tzdata
ENV TZ=Europe/Amsterdam
RUN rm -rf /var/cache/apk/*
