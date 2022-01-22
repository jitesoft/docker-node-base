# Node

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node.svg)](hhttps://hub.docker.com/r/jitesoft/node)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Docker image containing Node.js, using alpine linux as base.  
This image includes packages which are used to build common node packages:  
`gcc`, `g++`, `curl`, `wget`, `openssl`, `python` and `make`.  
If you are looking for a version without the above packages, use the [`jitesoft/node-base`](https://hub.docker.com/r/jitesoft/node-base) image.

## Image/Tags

All images after v12 is built for amd64 and arm64.  
Tags are based on the latest versions at build time, with `latest` tag refering to latest and `lts` to latest lts release.

Images can be found at:

* [DockerHub](https://hub.docker.com/r/jitesoft/node)
    * `docker.io/jitesoft/node`
* [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base)
    * `registry.gitlab.com/jitesoft/dockerfiles/node-base/full`
* [GitHub](https://github.com/orgs/jitesoft/packages/container/package/node)
    * `ghcr.io/jitesoft/node`
* [Quay](https://quay.io/jitesoft/node)
    * `quay.io/jitesoft/node`

_OBSERVE: Currently, all pushes to Quay are paused until their multi-arch support is working as intended._  

## Docker files

Docker files can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

[![Fosshost Logo](https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshostx128.png)](https://fosshost.org)
[![Aarch64 logo](https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/aarch64x128.png)](https://aarch64.com)

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)
