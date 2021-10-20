# syntax=docker/dockerfile:experimental
FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:3.14
ARG NODE_VERSION
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.app.nodejs.version="${NODE_VERSION}"

ARG TARGETARCH

RUN --mount=type=bind,source=./binaries,target=/tmp \
 addgroup -g 1000 node \
 && adduser -u 1000 -G node -s /bin/sh -D node \
 && apk add --no-cache --virtual .node-deps libstdc++ \
 && apk add --no-cache --virtual .node-deps-full git g++ gcc curl wget make python3 openssl \
 && apk add --no-cache --virtual .install-deps tar xz \
 && tar -Jxf /tmp/node-${TARGETARCH}.tar.xz -C /usr/local/ --strip-components=1 \
 && apk del .install-deps \
 && chmod +x /usr/local/bin/* \
 && node --version \
 && npm version

CMD [ "node" ]

