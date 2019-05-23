FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues"

ARG VERSION="unknown"
ENV NODE_VERSION="${VERSION}"

#COPY ./versions/node-v${NODE_VERSION}.tar.xz node.tar.xz
COPY ./node-v12.3.1.tar.xz node.tar.xz
RUN apk add --no-cache --virtual .trash autoconf git g++ gcc make python linux-headers libgcc \
    && apk add --no-cache libstdc++ \
    && tar -xf node.tar.xz \
    && cd node* \
    && ./configure \
    && getconf _NPROCESSORS_ONLN \
    && make -j$(getconf _NPROCESSORS_ONLN) \
    && make install -s \
    && cd .. \
    && rm -rf node \
    && rm node.tar.xz \
    && apk del .trash

CMD [ "node/bin/node" ]
