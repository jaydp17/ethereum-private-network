#!/usr/bin/env bash
docker run --name first-node -t -p 30303:30303 -v ${PWD}/base-config:/base-config -v ${PWD}/node1:/root/.ethereum gethd:latest geth init /base-config/genesis.json

