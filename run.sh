#!/bin/bash
#docker build . -t metasverse-node
docker pull selfbreak/metasverse-node
docker stop metasverse-node
docker rm metasverse-node
docker run --name="metasverse-node" \
    -v /etc/localtime:/etc/localtime \
    -v /etc/timezone:/etc/timezone   \
    -v `pwd`/genesis.json:/root/files/genesis.json \
    -v `pwd`/miner.ini:/root/files/miner.ini \
    -v `pwd`/chain:/root/.ethereum \
    -v `pwd`/ethash:/root/.ethash \
    -p 8545:8545 \
    -p 30303:30303 \
    -p 30303:30303/udp \
    -d \
    selfbreak/metasverse-node