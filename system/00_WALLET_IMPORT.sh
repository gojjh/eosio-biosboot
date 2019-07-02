WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"
EOSIO_PRIV_KEY="$( jq -r '.EOSIO_PRIV_KEY' "../.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "../.conf" )"
PRIV_KEY_1="$( jq -r '.PRIV_KEY_1' "../.conf" )"
PRIV_KEY_2="$( jq -r '.PRIV_KEY_2' "../.conf" )"
PRIV_KEY_3="$( jq -r '.PRIV_KEY_3' "../.conf" )"
PRIV_KEY_4="$( jq -r '.PRIV_KEY_4' "../.conf" )"
PRIV_KEY_5="$( jq -r '.PRIV_KEY_5' "../.conf" )"
PRIV_KEY_6="$( jq -r '.PRIV_KEY_6' "../.conf" )"
PRIV_KEY_7="$( jq -r '.PRIV_KEY_7' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

./cleos.sh wallet import --private-key $EOSIO_PRIV_KEY
./cleos.sh wallet import --private-key $INIT_PRIV_KEY
./cleos.sh wallet import --private-key $PRIV_KEY_1
./cleos.sh wallet import --private-key $PRIV_KEY_2
./cleos.sh wallet import --private-key $PRIV_KEY_3
./cleos.sh wallet import --private-key $PRIV_KEY_4
./cleos.sh wallet import --private-key $PRIV_KEY_5
./cleos.sh wallet import --private-key $PRIV_KEY_6
./cleos.sh wallet import --private-key $PRIV_KEY_7