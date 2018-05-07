FROM alpine:3.7
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ADD ./gpgkeys.txt /gpgkeys.txt
RUN apk add --no-cache --virtual .build curl grep gnupg openssl linux-headers libgcc \
    && for key in `cat /gpgkeys.txt`; do \
        gpg --keyserver pgp.mit.edu --recv-keys "$key" || \
        gpg --keyserver keyserver.pgp.com --recv-keys "$key" || \
        gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ; \
    done \
    && rm gpgkeys.txt \
    && LATEST_VERSION=$(curl -s https://nodejs.org/dist/latest-v10.x/ 2>&1 | grep -oPm1 "(?<=node-v)(([0-9]{0,3}(\.?)){3})" | tail -n 1) \
    && STABLE_VERSION=$(curl -s https://nodejs.org/dist/latest-v8.x/ 2>&1 | grep -oPm1 "(?<=node-v)(([0-9]{0,3}(\.?)){3})" | tail -n 1) \
    && echo $STABLE_VERSION >> /tmp/stable.txt && echo $LATEST_VERSION >> /tmp/latest.txt \
    && echo "Latest node version: ${LATEST_VERSION}" \
    && echo "Stable node version: ${STABLE_VERSION}"
