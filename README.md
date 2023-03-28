# Node-Base

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node-base.svg)](https://hub.docker.com/r/jitesoft/node-base)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Docker image containing Node.js using Alpine Linux as base.

This image is intended as a base image or as a runtime image, that is, it does not contain more than nodejs and npm, no
git, python or similar.  
If you wish to use an image more suited to build your node modules or use in a dev environment, check out [@jitesoft/node](https://hub.docker.com/r/jitesoft/node).

## Image/Tags

All images after v12 is built for amd64 and arm64.  
Tags are based on the latest versions at build time, with `latest` tag refering to latest and `lts` to latest lts release.

Images can be found at:

* [DockerHub](https://hub.docker.com/r/jitesoft/node-base) `docker.io/jitesoft/node-base`
* [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) `registry.gitlab.com/jitesoft/dockerfiles/node-base` 
* [GitHub](https://github.com/orgs/jitesoft/packages/container/package/node-base) `ghcr.io/jitesoft/node-base`
* [Quay](https://quay.io/jitesoft/node-base) `quay.io/jitesoft/node-base`

### Dockerfile

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-base) or [GitHub](https://github.com/jitesoft/docker-node-base)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://osuosl.org/" target="_blank" title="Oregon State University - Open Source Lab">
    <img src="https://jitesoft.com/images/oslx128.webp" alt="Oregon State University - Open Source Lab">
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:  

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)
