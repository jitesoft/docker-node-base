# Node

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/node)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Docker image containing Node.js, using alpine linux as base.  
This image includes packages which are used to build common node packages:  
`gcc`, `g++`, `curl`, `wget`, `openssl`, `python` and `make`.  
If you are looking for a version without the above packages, use the [`jitesoft/node-base`](https://hub.docker.com/repository/docker/jitesoft/node-base) image.

## Tags

The following tags are updated on a weekly schedule and built for amd64 and arm64.

### Docker Hub

* `14`, `latest`
* `12`, `stable`, `erbium`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/node-base/full`
    * `14`, `latest`
    * `12`, `stable`, `erbium`

### Quay.io

* `quay.io/jitesoft/node`
    * `14`, `latest`
    * `12`, `stable`, `erbium`

## Docker files

Docker files can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).  
