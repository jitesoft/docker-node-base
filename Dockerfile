FROM alpine:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ADD ./gpgkeys.txt /gpgkeys.txt

# This layer can be rebuilt from cache as long as the gpg keys have not changed.
RUN apk add --no-cache --virtual trash autoconf gnupg linux-headers libgcc \
    && apk add --no-cache libstdc++ git g++ gcc wget make python openssl \
    && for key in `cat /gpgkeys.txt`; do \
        gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
        gpg --keyserver keyserver.pgp.com --recv-keys "$key" || \
        gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ; \
    done

ARG NODE_VERSION="8.5.0"

# This layer will have to be rebuilt for each version.
RUN wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz \
    && wget https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc \
    && gpg --batch --decrypt --output sha.txt SHASUMS256.txt.asc \
    && grep " node-v${NODE_VERSION}.tar.xz\$" sha.txt | sha256sum -c - \
    && tar -xf node-v${NODE_VERSION}.tar.xz

WORKDIR /node-v${NODE_VERSION}
# This layer is just to make the whole build faster/easier for development of the image!
RUN ./configure \
    && make -j4 \
    && make install \
    && cd .. \
    && rm -r node-v${NODE_VERSION} \
    && rm node-v${NODE_VERSION}.tar.xz sha.txt SHASUMS256.txt.asc gpgkeys.txt \
    && apk del trash

WORKDIR /

CMD [ "node" ]
