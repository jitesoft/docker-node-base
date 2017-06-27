FROM node:alpine
MAINTAINER Johannes Tegnér <johannes@jitesoft.com>

RUN apk add --no-cache autoconf git g++ gcc

WORKDIR /app
