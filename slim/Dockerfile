FROM registry.gitlab.com/jitesoft/dockerfiles/node-base:shared
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ARG VERSION="unknown"
ENV NODE_VERSION="${VERSION}"

RUN apk add --no-cache --virtual .trash autoconf git g++ gcc curl make python \
    && apk add --no-cache libstdc++ \
    && curl -OsS https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz \
            -OsS https://nodejs.org/dist/v${NODE_VERSION}/SHASUMS256.txt \
            -OsS https://nodejs.org/dist/v${NODE_VERSION}/SHASUMS256.txt.sig \
    && gpg --verify SHASUMS256.txt.sig SHASUMS256.txt \
    && grep " node-v${NODE_VERSION}.tar.xz\$" SHASUMS256.txt | sha256sum -c - \
    && tar -xf node-v${NODE_VERSION}.tar.xz \
    && cd node-v${NODE_VERSION} \
    && ./configure \
    && make -j4 \
    && make install \
    && cd .. \
    && rm -r node-v${NODE_VERSION} \
    && rm node-v${NODE_VERSION}.tar.xz SHASUMS256.txt SHASUMS256.txt.sig \
    && rm -rf /tmp/* \
    && apk del .trash \
    && apk del .build

CMD [ "node" ]
