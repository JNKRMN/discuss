#!/bin/sh

docker-compose -f docker-compose.build.yml build release
docker-compose -f docker-compose.build.yml run --rm release