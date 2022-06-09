# syntax=docker/dockerfile:experimental
FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:3.16
ARG NODE_VERSION
ARG BUILD_TIME

LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-base" \
      com.jitesoft.app.nodejs.version="${NODE_VERSION}" \
      # Open container labels
      org.opencontainers.image.version="${NODE_VERSION}" \
      org.opencontainers.image.created="${BUILD_TIME}" \
      org.opencontainers.image.description="Stripped down Node.js on alpine linux" \
      org.opencontainers.image.vendor="Jitesoft" \
      org.opencontainers.image.source="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      # Artifact hub annotations
      io.artifacthub.package.alternative-locations="oci://registry.gitlab.com/jitesoft/dockerfiles/node-base,oci://index.docker.io/jitesoft/node-base,oci://ghcr.io/jitesoft/node-base" \
      io.artifacthub.package.readme-url="https://gitlab.com/jitesoft/dockerfiles/node-base/-/raw/master/README.md" \
      io.artifacthub.package.logo-url="https://jitesoft.com/favicon-96x96.png"

ARG TARGETARCH

RUN --mount=type=bind,source=./binaries,target=/tmp \
 addgroup -g 1000 node \
 && adduser -u 1000 -G node -s /bin/sh -D node \
 && apk add --no-cache --virtual .node-deps libstdc++ \
 && apk add --no-cache --virtual .install-deps tar xz \
 && tar -Jxf /tmp/node-${TARGETARCH}.tar.xz -C /usr/local/ --strip-components=1 \
 && apk del .install-deps \
 && chmod +x /usr/local/bin/* \
 && node --version \
 && npm version

CMD [ "node" ]

