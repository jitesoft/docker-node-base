# Node-Base

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node-base.svg)](https://hub.docker.com/r/jitesoft/node-base)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Docker image containing Node.js using Alpine Linux as base.

This image is intended as a base image or as a runtime image, that is, it does not contain more than nodejs and npm, no
git, python or similar.  
If you wish to use an image more suited to build your node modules or use in a dev environment, check out [@jitesoft/node](https://hub.docker.com/repository/docker/jitesoft/node).

## Tags

All images after v12 is built for amd64 and arm64.

### Docker Hub

* `docker.io/jitesoft/node-base`
    * `14`, `latest`
    * `12`, `lts`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/node-base`
    * `14`, `latest`
    * `12`, `lts`

### GitHub

* `ghcr.io/jitesoft/node-base`
    * `14`, `latest`
    * `12`, `lts`

### Quay.io

* `quay.io/jitesoft/node-base`
    * `14`, `latest`
    * `12`, `lts`

_OBSERVE: Currently, all pushes to Quay are paused until their multi-arch support is working as intended._  

### Dockerfile

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).
