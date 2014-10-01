## Docker Base: Nexus


This repository contains **Dockerbase** of [Nexus](http://www.sonatype.org/nexus) for [Docker](https://www.docker.com/)'s [Dockerbase build](https://registry.hub.docker.com/u/dockerbase/nexus/) published on the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Depends on:

* [dockerbase/service-java8](https://registry.hub.docker.com/u/library/service-java8/)


### Installation

1. Install [Docker](https://docs.docker.com/installation/).

2. Download [Dockerbase build](https://registry.hub.docker.com/u/dockerbase/nexus/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerbase/nexus`


### Usage

    docker run --name dockerbase-nexus --restart=always -t -p 8081:8081 --cidfile cidfile -d dockerbase/nexus /sbin/runit

### Components & Versions

    Description:	Ubuntu 14.04.1 LTS
    git version 1.9.1
    OpenSSH_6.6.1p1 Ubuntu-2ubuntu2, OpenSSL 1.0.1f 6 Jan 2014
    java version "1.8.0_20"
    Java(TM) SE Runtime Environment (build 1.8.0_20-b26)
    Java HotSpot(TM) 64-Bit Server VM (build 25.20-b23, mixed mode)
    nexus:2.9.2:01
