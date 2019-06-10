FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues"

ARG NODE_VERSION="12"
ENV NODE_VERSION="${NODE_VERSION}"

COPY ./versions/node-v${NODE_VERSION}.tar.xz node.tar.xz
RUN apk add --no-cache --virtual .build-deps build-base git python linux-headers openssl-dev zlib-dev \
 && tar -xf node.tar.xz \
 && rm node.tar.xz \
 && cd node* \
 && JOB_COUNT=$(($(nproc) * 2)) \
 && echo "Running with ${JOB_COUNT} jobs paralell." \
 && ./configure --shared-openssl --shared-zlib \
 && make -j${JOB_COUNT} -s -i -l  \
 && make install -s \
 && cd .. \
 && apk del .build-deps \
 # Install dependencies.
 && apk add --no-cache --virtual .node-deps libstdc++ \
 && npm cache clean \
 && rm -rf ~/.node-gyp /tmp/* /node*
CMD [ "node" ]
