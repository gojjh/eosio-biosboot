#!/bin/bash
EOSBINDIR="$( jq -r '.EOSBINDIR' "../.conf" )"

NODEHOST="127.0.0.1"
NODEPORT="8013"
WALLETHOST="127.0.0.1"
WALLETPORT="8899"

$EOSBINDIR/cleos/cleos -u http://$NODEHOST:$NODEPORT --wallet-url http://$WALLETHOST:$WALLETPORT "$@"