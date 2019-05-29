FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues"

ARG NODE_VERSION="12"
ENV NODE_VERSION="${NODE_VERSION}" \
    PATH="$PATH:/node/bin"

COPY ./versions/node-v${NODE_VERSION}.tar.xz node.tar.xz
RUN START=`date +%s` \
    # Used to check time it takes to run the full script.
 && apk add --no-cache --virtual .build-deps build-base git python linux-headers \
 && tar -xf node.tar.xz \
 && cd node* \
 && ./configure --dest-os=linux --dest-cpu=x86_64 \
 && let JOBS="$(nproc) * 2" \
 && echo "${JOBS} parallel jobs." \
 && make -j$JOBS V= \
 && make install -s \
 && cd .. \
 && rm -rf node \
 && rm node.tar.xz \
 && apk del .build-deps \
 && apk add --no-cache --virtual .node-deps libstdc++ \
 # Used to check time it takes to run the full script.
 && END=`date +%s` \
 && RUNTIME=$((END-START)) \
 && echo "it took ${RUNTIME} seconds to build."

CMD [ "node/bin/node" ]
