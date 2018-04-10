FROM alpine:3.7
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ADD ./gpgkeys.txt /gpgkeys.txt

RUN VERSION=$(wget -qO- https://nodejs.org/dist/latest/ | grep -oP "(?<=node-v)(([0-9]{0,3}\.){2}[0-9]{0,3})+" | head -1) \
    && apk add --no-cache --virtual trash autoconf gnupg linux-headers libgcc git g++ gcc wget make python openssl \
    && apk add --no-cache libstdc++ \
    && for key in `cat /gpgkeys.txt`; do \
        gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
        gpg --keyserver keyserver.pgp.com --recv-keys "$key" || \
        gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ; \
    done \
    && wget -q https://nodejs.org/dist/v${VERSION}/node-v${VERSION}.tar.xz \
    && wget -q https://nodejs.org/dist/v$${VERSION}/SHASUMS256.txt.asc \
    && gpg --batch --decrypt --output sha.txt SHASUMS256.txt.asc \
    && grep " node-v${VERSION}.tar.xz\$" sha.txt | sha256sum -c - \
    && tar -xf node-v${VERSION}.tar.xz \
    && cd node-v${VERSION} \
    && ./configure \
    && make -j4 \
    && make install \
    && cd .. \
    && rm -r node-v${VERSION} \
    && rm node-v${VERSION}.tar.xz sha.txt SHASUMS256.txt.asc gpgkeys.txt \
    && apk del trash

CMD [ "node" ]
