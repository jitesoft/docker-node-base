FROM node:alpine
MAINTAINER Johannes Tegnér <johannes@jitesoft.com>

# This file is currently just a base image inheriting from the official node:alpine docker file.
# It will later on likely be changed, so do not rely on it being a mirror of the official image!

WORKDIR /app