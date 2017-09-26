# Node-base

Docker image containing Node.js using alpine linux as base.  
This image contains nothing but node.js and npm and is intended as a base image to derive from in other docker files.

## Tags and `Dockerfile` links

* `8, latest` [(Dockerfile)](https://github.com/jitesoft/docker-node-base/blob/8/Dockerfile)
* `6` [(Dockerfile)](https://github.com/jitesoft/docker-node-base/blob/6/Dockerfile)

### Slim builds

Due to adding a few core packages to the main branches of the image, two `slim` images have been introduced.  
The slim images does not have `git g++ gcc wget make python openssl` packages installed hence decreasing the image size.

* `8-slim` [(Dockerfile)](https://github.com/jitesoft/docker-node-base/blob/8-slim/Dockerfile)
* `6-slim` [(Dockerfile)](https://github.com/jitesoft/docker-node-base/blob/6-slim/Dockerfile)
