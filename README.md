# ROS master in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros2-master)](https://hub.docker.com/r/frankjoshua/ros2-master) [![CI](https://github.com/frankjoshua/docker-ros2-master/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros2-master/actions)

## Description

Runs a ros master in a Docker container. Probably need --network="host" because ROS uses ephemeral ports. --ipc=host is needed to allow shared memory between processes for dds when multiple containers are on the same machine. --pid=host is needed for unique guid in dds to avoid possible id conflicts.

This repo is mostly an example of how to build a multi architecture docker container with ROS (Robotic Operating System). Github Actions is used to build 3 docker containers using `docker buildx` amd64 (x86 Desktop PC), arm64 (Jetson Nano) and arm32 (Raspberry Pi). This is for the purpose of developing locally on a work pc or laptop. Then being able to transfer your work to an embedded device with a high level of confidence of success.

## Example

```
docker run -it \
    --network=host \
    --ipc=host \
    --pid=host \
    frankjoshua/ros2-master
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros2-master -l
```

To build for both amd64 and arm64. Also push to docker hub.
```
./build.sh -t frankjoshua/ros2-master -p
```

## Template

This repo is a GitHub template. Just change the repo name in [.github/workflows/ci.yml](.github/workflows/ci.yml) and edit [Dockerfile](Dockerfile) and [README.md](README.md) to taste.

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
