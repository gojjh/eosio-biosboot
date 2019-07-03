#!/bin/bash
EOSBINDIR="$( jq -r '.EOSBINDIR' "../.conf" )"
ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
DATADIR="$ROOTDIR/node_5/blockchain"
PRODUCER_NAME="$( jq -r '.ACCOUNT_5' "../.conf" )"
PRIV_KEY="$( jq -r '.PRIV_KEY_5' "../.conf" )"
PUB_KEY="$( jq -r '.PUB_KEY_5' "../.conf" )"

./stop.sh
echo -e "Starting Nodeos \n";

# $EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --delete-all-blocks --genesis-json ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
$EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --replay-blockchain --contracts-console --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$EOSBINDIR/nodeos/nodeos -p $PRODUCER_NAME --signature-provider=$PUB_KEY=KEY:$PRIV_KEY --contracts-console ../genesis.json --data-dir $DATADIR --blocks-dir $DATADIR/blocks --config-dir . > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid