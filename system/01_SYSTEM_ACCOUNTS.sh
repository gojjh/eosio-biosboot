EOSIO_PUB_KEY="$( jq -r '.EOSIO_PUB_KEY' "../.conf" )"
SYSTEM_ACCOUNTS=($( jq -r '.SYSTEM_ACCOUNTS' "../.conf" ))
INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "../.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "../.conf" )"
WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

for account in "${SYSTEM_ACCOUNTS[@]}"
do
    ./cleos.sh create account eosio $account $EOSIO_PUB_KEY $EOSIO_PUB_KEY -p eosio
done

./cleos.sh create account eosio $INIT_ACCOUNT $INIT_PUB_KEY $INIT_PUB_KEY -p eosio