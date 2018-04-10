# Node-base

Docker image containing Node.js using alpine linux as base.  
This image contains nothing but node.js and npm and is intended as a base image to derive from in other docker files.

## Tags and Dockerfiles

* `9`, `latest` [Dockerfile](https://github.com/jitesoft/docker-node-base/blob/master/full/latest/Dockerfile)
* `8`, `stable` [Dockerfile](https://github.com/jitesoft/docker-node-base/blob/master/full/stable/Dockerfile)

### Slim builds

Due to adding a few core packages to the main branches of the image, two `slim` images have been introduced.  
The slim images does not have `git g++ gcc wget make python openssl` packages installed hence decreasing the image size.

* `9-slim`, `latest-slim` [Dockerfile](https://github.com/jitesoft/docker-node-base/blob/slim/latest/Dockerfile)
* `8-slim`, `stable-slim` [Dockerfile](https://github.com/jitesoft/docker-node-base/blob/slim/stable/Dockerfile)
