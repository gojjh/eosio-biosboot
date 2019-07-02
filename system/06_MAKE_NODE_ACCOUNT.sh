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

WALLET_PWD="$( jq -r '.WALLET_PWD' "../.conf" )"

./cleos.sh wallet unlock --password $WALLET_PWD

./cleos.sh system newaccount baekseokinit $ACCOUNT_1 $PUB_KEY_1 $PUB_KEY_1 --stake-net "1000000.0000 EOS" --stake-cpu "1000000.0000 EOS" --buy-ram "1000000.0000 EOS" -p baekseokinit
./cleos.sh system newaccount baekseokinit $ACCOUNT_2 $PUB_KEY_2 $PUB_KEY_2 --stake-net "1000000.0000 EOS" --stake-cpu "1000000.0000 EOS" --buy-ram "1000000.0000 EOS" -p baekseokinit
./cleos.sh system newaccount baekseokinit $ACCOUNT_3 $PUB_KEY_3 $PUB_KEY_3 --stake-net "1000000.0000 EOS" --stake-cpu "1000000.0000 EOS" --buy-ram "1000000.0000 EOS" -p baekseokinit
./cleos.sh system newaccount baekseokinit $ACCOUNT_4 $PUB_KEY_4 $PUB_KEY_4 --stake-net "1000000.0000 EOS" --stake-cpu "1000000.0000 EOS" --buy-ram "1000000.0000 EOS" -p baekseokinit
./cleos.sh system newaccount baekseokinit $ACCOUNT_5 $PUB_KEY_5 $PUB_KEY_5 --stake-net "1000000.0000 EOS" --stake-cpu "1000000.0000 EOS" --buy-ram "1000000.0000 EOS" -p baekseokinit