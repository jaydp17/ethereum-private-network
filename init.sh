#!/usr/bin/env bash

# creates a new account and saves in the keystore
get_new_account() {
  # new_account_output="Address: {af5e8bb52b243d5ce616e5eb11acb8b10fae9fc3}"
  new_account_output=$(docker run --rm --name account-generator -v ${PWD}/base-config:/base-config -v ${PWD}/nodes-data/node1:/root/.ethereum gethd:latest geth account new --password /base-config/init-password.txt)
  echo $new_account_output | cut -b11-50
}

addr1=$(get_new_account)
addr2=$(get_new_account)
addr3=$(get_new_account)
addr4=$(get_new_account)

# put all the hashes in the genesis.json file
template_path="./base-config/genesis-template.json"
genesis_path="./base-config/genesis.json"
cp $template_path $genesis_path
sed -i s/__ADDR1__/$addr1/g $genesis_path
sed -i s/__ADDR2__/$addr2/g $genesis_path
sed -i s/__ADDR3__/$addr3/g $genesis_path
sed -i s/__ADDR4__/$addr4/g $genesis_path

# initialize the chain
docker-compose -f docker-compose.init.yml up

# remove the contains
docker-compose -f docker-compose.init.yml down