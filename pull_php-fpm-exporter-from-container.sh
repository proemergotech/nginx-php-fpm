#!/bin/sh

id=$(docker create softonic/phpfpm_exporter)
docker cp $id:/bin/phpfpm_exporter ./phpfpm_exporter
docker rm -v $id
