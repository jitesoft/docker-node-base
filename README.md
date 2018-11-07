# Node-base

Docker image containing Node.js using alpine linux as base.  
This image contains nothing but node.js and npm and is intended as a base image to derive from in other docker files.

## Tags

### Full builds

* `11`, `latest`
* `10`, `stable`, `dubnium`
* `8`, `carbon`

### Slim builds

Due to adding a few core packages to the main branches of the image, two `slim` images have been introduced.  
The slim images does not have `git g++ gcc wget make python openssl` packages installed hence decreasing the image size.

* `11-slim`, `latest-slim`
* `10-slim`, `stable-slim`, `dubnium-slim`, `lts-slim`
* `8-slim`, `carbon`

## Docker files

Docker files can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)