ARG BUILD_TYPE="unknown"
FROM jitesoft/node-base:${BUILD_TYPE}-slim
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft - https://jitesoft.com" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-base" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-base/issues"

RUN apk add --no-cache libstdc++ git g++ gcc wget make python openssl
