FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
ARG NODE_VERSION="12"
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.app.nodejs.version="${NODE_VERSION}"

ENV NODE_VERSION="${NODE_VERSION}"

COPY ./node-src /node-src
RUN addgroup -g 1000 node \
 && adduser -u 1000 -G node -s /bin/sh -D node \
 && apk add --no-cache --virtual .build-deps build-base git python linux-headers zlib-dev openssl-dev \
 && cd node-src \
 && make install \
 && cd .. \
 && apk del .build-deps \
 # Install dependencies.
 && apk add --no-cache --virtual .node-deps libstdc++ \
 && rm -rf /tmp/* /node-src

CMD [ "node" ]
