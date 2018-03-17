#!/bin/bash
n=1
if [ ! -n "$1" ] ;then
    n=1
fi
docker exec -it ethereumdocker_eth_$n geth attach ipc://root/.ethereum/devchain/geth.ipc
