INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "../.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "../.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "../.conf" )"
INIT_URL="$( jq -r '.INIT_URL' "../.conf" )"
INIT_CITY="$( jq -r '.INIT_CITY' "../.conf" )"
INIT_LOGO="$( jq -r '.INIT_LOGO' "../.conf" )"

WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

./cleos.sh system newaccount eosio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY --stake-net "1.0000 EOS" --stake-cpu "1.0000 EOS" --buy-ram "1.0000 EOS"  -p eosio
./cleos.sh system regproducer $INIT_ACCOUNT $INIT_PUB_KEY 

./cleos.sh system listproducers