CONTRACTSDIR="$( jq -r '.CONTRACTSDIR' "../.conf" )"
WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

./cleos.sh set contract eosio.token $CONTRACTSDIR/eosio.token -p eosio.token
./cleos.sh set contract eosio.msig $CONTRACTSDIR/eosio.msig -p eosio.msig