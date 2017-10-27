# gops-docker-image

Docker image for [gops](https://github.com/google/gops).

## Using

This image can be used to debug Go processes running inside containers. Make
sure your process embeds the gops agent, then you can use the target container
PID namespace to start gops.

It also requires a shared network namespace and a shared volume.

## Docker Hub

The image is available on Docker Hub: https://hub.docker.com/r/fsouza/gops/.
