FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues"

ARG VERSION="unknown"
ENV NODE_VERSION="${VERSION}"

COPY ./versions/node-v${NODE_VERSION}.tar.xz node.tar.xz
RUN apk add --no-cache --virtual .trash autoconf git g++ gcc curl make python openssl linux-headers libgcc \
    && apk add --no-cache libstdc++ \
    && tar -xf node.tar.xz \
    && cd node* \
    && ./configure \
    && make -j4 \
    && make install \
    && cd .. \
    && rm -rf node \
    && rm node.tar.xz \
    && apk del .trash

CMD [ "node" ]
