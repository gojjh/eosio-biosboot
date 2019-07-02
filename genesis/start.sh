#!/bin/bash
EOSBINDIR="$( jq -r '.EOSBINDIR' "../.conf" )"
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
DATADIR="$ROOTDIR/genesis/blockchain"
PRODUCER_NAME="$( jq -r '.EOSIO_ACCOUNT' "../.conf" )"
PRIV_KEY="$( jq -r '.EOSIO_PRIV_KEY' "../.conf" )"
PUB_KEY="$( jq -r '.EOSIO_PUB_KEY' "../.conf" )"

./stop.sh
echo -e "Starting Nodeos \n";

$EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --delete-all-blocks --genesis-json ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --replay-blockchain --contracts-console --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --contracts-console ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid