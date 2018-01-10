#!/usr/bin/env bash

# get the enode line
enode_line=$(docker exec first-node geth attach --exec "admin.nodeInfo.enode")

# get the IP address of the first-node
first_node_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' first-node)

# replace [::] with the container ip of first-node
enode_line=$(echo $enode_line | sed "s/127\.0\.0\.1/$first_node_ip/g" | sed "s/\[\:\:\]/$first_node_ip/g")

# construct the command
geth_console_command="admin.addPeer("$enode_line")"

# execute it on all other nodes
docker exec second-node geth attach --exec "$geth_console_command"
