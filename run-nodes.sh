#!/usr/bin/env bash


#################################################
########   Below is the canonical way to do it
#################################################

# # create a network
# docker network create ETH

# # create the boot key
# docker run --rm --name boot-key -v ${PWD}/boot:/boot gethd:latest bootnode --genkey=/boot/boot.key
# docker run --rm --name boot-key -v ${PWD}/boot:/boot gethd:latest bootnode --nodekey=/boot/boot.key

# # initialize the chain
# docker run --rm --name first-node-init -v ${PWD}/base-config:/base-config -v ${PWD}/nodes-data/node1:/root/.ethereum gethd:latest geth init /base-config/genesis.json
# docker run --rm --name second-node-init -v ${PWD}/base-config:/base-config -v ${PWD}/nodes-data/node2:/root/.ethereum gethd:latest geth init /base-config/genesis.json

# # start geth
# docker run --name first-node -d --network ETH -v ${PWD}/base-config:/base-config -v ${PWD}/nodes-data/node1:/root/.ethereum gethd:latest geth --identity="node-one" --networkid="7" --rpcaddr 0.0.0.0
# docker run --name second-node -d --network ETH -v ${PWD}/base-config:/base-config -v ${PWD}/nodes-data/node2:/root/.ethereum gethd:latest geth --identity="node-two" --networkid="7" --rpcaddr 0.0.0.0



######################################################
########   Below is the docker-compose way to do it
######################################################

# start the containers
docker-compose up -d

# wait for them to boot up
sleep 2

# attach
./attach-first-node.sh