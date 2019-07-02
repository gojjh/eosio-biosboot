CONTRACTSDIR="$( jq -r '.CONTRACTSDIR' "../.conf" )"
WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

#./cloes.sh set account permission eosio active --add-code
./cleos.sh set contract eosio $CONTRACTSDIR/eosio.system -p eosio
./cleos.sh push action eosio setpriv '["eosio.msig", 1]' -p eosio
./cleos.sh push action eosio init '["0", "4,EOS"]' -p eosio