# anduril-moksiskaan

Docker image for the [Moksiskaan](http://csbi.ltdk.helsinki.fi/moksiskaan/doc.html) database built on top of [anduril-base](https://github.com/Gig77/anduril-base).

## Installation

### Via pre-built image

A pre-built docker image is available at [Dockerhub](https://registry.hub.docker.com/u/cfrech/anduril-moksiskaan/) and can be installed with:

    docker pull cfrech/anduril-moksiskaan

The total size of the image is ~7 Gb, mostly due to the large `anduril-base` image.

### Via Dockerfile

    git clone https://github.com/Gig77/anduril-moksiskaan/
    cd anduril-moksiskaan
    docker build -t cfrech/anduril-moksiskaan .

The Dockerfile does not populate the Moksiskaan database from scratch but imports a database dump, which is distributed as part of this repository. If [anduril-base](https://github.com/Gig77/anduril-base) is already available on the host, building the Dockerfile should not take longer than a few minutes.

After successful installation, the following command outputs two example gene names from the Moksiskaan database:

    $ docker run --rm -u anduril cfrech/anduril-moksiskaan /opt/moksiskaan/db/piispanhiippa -Rs BioentityName -Rt 10,DNARegion AIP MUTYH

## Configuration

* Moksiskaan Version 2.05 (2014-07-22)
* Anduril 1.2.23
* Debian Wheezy (7.8)
* Hibernate version 4.3.5.Final
* Moksiskaan installation directory: `/opt/moksiskaan`
* psql (PostgreSQL) 9.1.16

## Additional features

* Password-less login with user `anduril` (sudoer)
* Entrypoint to automatically start the PostgreSQL daemon upon login 
