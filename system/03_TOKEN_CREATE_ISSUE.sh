INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "../.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "../.conf" )"
WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

./cleos.sh push action eosio.token create '["eosio", "10000000000.0000 EOS"]' -p eosio.token@active
sleep 2s
./cleos.sh push action eosio.token issue '["eosio", "1000000000.0000 EOS", "init"]' -p eosio@active
sleep 2s
./cleos.sh push action eosio.token transfer '["eosio", "'$INIT_ACCOUNT'", "1000000000.0000 EOS", ""]' -p eosio@active
sleep 2s