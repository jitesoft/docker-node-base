FROM registry.gitlab.com/jitesoft/dockerfiles/node-base:shared
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ARG VERSION="unknown"
ENV NODE_VERSION="${VERSION}"

RUN apk add --no-cache --virtual .trash autoconf git g++ gcc wget make python \
    && apk add --no-cache libstdc++ \
    && wget -q https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz \
    && wget -q https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc \
    && gpg --batch --decrypt --output sha.txt SHASUMS256.txt.asc \
    && grep " node-v${NODE_VERSION}.tar.xz\$" sha.txt | sha256sum -c - \
    && tar -xf node-v${NODE_VERSION}.tar.xz \
    && cd node-v${NODE_VERSION} \
    && ./configure \
    && make -j4 \
    && make install \
    && cd .. \
    && rm -r node-v${NODE_VERSION} \
    && rm node-v${NODE_VERSION}.tar.xz sha.txt SHASUMS256.txt.asc \
    && rm -rf /tmp/* \
    && apk del .trash \
    && apk del .build

CMD [ "node" ]
