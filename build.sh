#!/bin/bash

docker build -t cfrech/anduril-moksiskaan . && \
  docker run --rm -u anduril cfrech/anduril-moksiskaan /opt/moksiskaan/db/piispanhiippa -Rs BioentityName -Rt 10,DNARegion AIP MUTYH
