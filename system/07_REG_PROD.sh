INIT_ACCOUNT="$( jq -r '.INIT_ACCOUNT' "../.conf" )"
INIT_PUB_KEY="$( jq -r '.INIT_PUB_KEY' "../.conf" )"
INIT_PRIV_KEY="$( jq -r '.INIT_PRIV_KEY' "../.conf" )"

ACCOUNT_1="$( jq -r '.ACCOUNT_1' "../.conf" )"
PUB_KEY_1="$( jq -r '.PUB_KEY_1' "../.conf" )"
PRIV_KEY_1="$( jq -r '.PRIV_KEY_1' "../.conf" )"

ACCOUNT_2="$( jq -r '.ACCOUNT_2' "../.conf" )"
PUB_KEY_2="$( jq -r '.PUB_KEY_2' "../.conf" )"
PRIV_KEY_2="$( jq -r '.PRIV_KEY_2' "../.conf" )"

ACCOUNT_3="$( jq -r '.ACCOUNT_3' "../.conf" )"
PUB_KEY_3="$( jq -r '.PUB_KEY_3' "../.conf" )"
PRIV_KEY_3="$( jq -r '.PRIV_KEY_3' "../.conf" )"

ACCOUNT_4="$( jq -r '.ACCOUNT_4' "../.conf" )"
PUB_KEY_4="$( jq -r '.PUB_KEY_4' "../.conf" )"
PRIV_KEY_4="$( jq -r '.PRIV_KEY_4' "../.conf" )"

ACCOUNT_5="$( jq -r '.ACCOUNT_5' "../.conf" )"
PUB_KEY_5="$( jq -r '.PUB_KEY_5' "../.conf" )"
PRIV_KEY_5="$( jq -r '.PRIV_KEY_5' "../.conf" )"

./cleos.sh transfer $INIT_ACCOUNT $ACCOUNT_1 "100000000.0000 EOS" ""
./cleos.sh transfer $INIT_ACCOUNT $ACCOUNT_2 "100000000.0000 EOS" ""
./cleos.sh transfer $INIT_ACCOUNT $ACCOUNT_3 "100000000.0000 EOS" ""
./cleos.sh transfer $INIT_ACCOUNT $ACCOUNT_4 "100000000.0000 EOS" ""
./cleos.sh transfer $INIT_ACCOUNT $ACCOUNT_5 "100000000.0000 EOS" ""

./cleos.sh system regproducer $ACCOUNT_1 $PUB_KEY_1
./cleos.sh system regproducer $ACCOUNT_2 $PUB_KEY_2
./cleos.sh system regproducer $ACCOUNT_3 $PUB_KEY_3
./cleos.sh system regproducer $ACCOUNT_4 $PUB_KEY_4
./cleos.sh system regproducer $ACCOUNT_5 $PUB_KEY_5

./cleos.sh system delegatebw $ACCOUNT_1 $ACCOUNT_1 "50000000.0000 EOS" "50000000.0000 EOS"
./cleos.sh system delegatebw $ACCOUNT_2 $ACCOUNT_2 "50000000.0000 EOS" "50000000.0000 EOS"
./cleos.sh system delegatebw $ACCOUNT_3 $ACCOUNT_3 "50000000.0000 EOS" "50000000.0000 EOS"
./cleos.sh system delegatebw $ACCOUNT_4 $ACCOUNT_4 "50000000.0000 EOS" "50000000.0000 EOS"
./cleos.sh system delegatebw $ACCOUNT_5 $ACCOUNT_5 "50000000.0000 EOS" "50000000.0000 EOS"

./cleos.sh system voteproducer prods $ACCOUNT_1 $ACCOUNT_1
./cleos.sh system voteproducer prods $ACCOUNT_2 $ACCOUNT_2
./cleos.sh system voteproducer prods $ACCOUNT_3 $ACCOUNT_3
./cleos.sh system voteproducer prods $ACCOUNT_4 $ACCOUNT_4
./cleos.sh system voteproducer prods $ACCOUNT_5 $ACCOUNT_5