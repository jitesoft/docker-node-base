# Node

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node-base.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/node-base)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Docker image containing Node.js using Alpine Linux as base.  

### Deprecation warning

The full node images (the ones missing the`-slim` tag) will start being published to a new docker image (`jitesoft/node`).  
This image was always intended as a base image, a small and stripped image. The `full-builds` tags will therefore be moved
to the new image name.  

The `latest` and `stable` images will be the full builds until jan 1 2020 while the new image will contain only the full builds. Please
migrate to the new image as soon as possible to avoid any troublesome issues.  
After 010120, this image will only update the none `-slim` tags, while the images will be the `slim` versions.


## Tags

### Docker Hub

* `jitesoft/node`
    * `12`, `latest`
    * `10`, `stable`, `dubnium`
* `jitesoft/node-base`
    * `12-slim`, `latest-slim`
    * `10-slim`, `stable-slim`, `dubnium-slim`, `lts-slim`

### Quay.io

* `quay.io/jitesoft/node`
    * `12`, `latest`
    * `10`, `stable`, `dubinum`
    * `12-slim`, `latest-slim`
    * `10-slim`, `latest-slim`, `dubinum-slim`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/node-base`
    * `12`, `latest`
    * `10`, `stable`, `dubinum`
    * `12-slim`, `latest-slim`
    * `10-slim`, `latest-slim`, `dubinum-slim`

### Slim builds

The images suffixed with `slim` are a stripped version of the image, the none `slim` images contains common tools - for 
building dependencies - such as `gcc`, `g++`, `curl`, `wget`, `openssl`, `git`, `python` and `make`, those are not
present in the slim build, making it a lot smaller.  
The full image is more suitable for building the application while the slim builds could be used as a runtime.

### Dockerfile

Dockerfile can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).


## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).  
