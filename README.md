# Ethereum Private Network

This is a really small demo of how you can boot up an Ethereum Private Network.

There are 2 nodes in the network, but easy to increase.

## 💾 Pre-requisites

* [docker](https://www.docker.com/)
* [docker-compose](https://docs.docker.com/compose/install/)

## ▶️ Usage

```sh
# Creates a few accounts on both nodes
# and initializes the chain
$ ./init.sh

# start the nodes
# and makes them add each other as peers
$ ./run-nodes.sh

# now your network is ready
# the second-node is mining, the first-node is not
# first-node has 8545 & 8546 ports open
# so you can connect to it through RPC & WebSockets (WS)

# now to stop the nodes
$ ./stop-nodes.sh
```

## 🎓 License

MIT
