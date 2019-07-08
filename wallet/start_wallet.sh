#!/bin/bash
EOSBINDIR="$( jq -r '.EOSBINDIR' "../.conf" )"

# ROOTDIR="$( jq -r '.ROOTDIR' "../.conf" )"
# WALLETDIR="$ROOTDIR/wallet"
WALLETDIR="."
WALLETHOST="127.0.0.1"
WALLETPORT="8899"

./stop_wallet.sh
# $EOSBINDIR/keosd/keosd --config-dir $WALLETDIR --wallet-dir $WALLETDIR --http-server-address $WALLETHOST:$WALLETPORT $@ & echo $! > $WALLETDIR/wallet.pid
$EOSBINDIR/keosd/keosd --config-dir $WALLETDIR --data-dir $WALLETDIR --http-server-address $WALLETHOST:$WALLETPORT $@ & echo $! > $WALLETDIR/wallet.pid