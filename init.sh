#!/usr/bin/env bash

# initialize the chain
docker-compose -f docker-compose.init.yml up

# remove the contains
docker-compose -f docker-compose.init.yml down