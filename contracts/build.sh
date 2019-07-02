CONTRACTSDIR="$( jq -r '.CONTRACTSDIR' "../.conf" )"

mkdir eosio.bios
mkdir eosio.msig
mkdir eosio.system
mkdir eosio.token
mkdir eosio.wrap

eosio-cpp -o ./eosio.bios/eosio.bios.wasm $CONTRACTSDIR/eosio.bios/src/eosio.bios.cpp -I $CONTRACTSDIR/eosio.bios/include
eosio-cpp -o ./eosio.msig/eosio.msig.wasm $CONTRACTSDIR/eosio.msig/src/eosio.msig.cpp -I $CONTRACTSDIR/eosio.msig/include
eosio-cpp -o ./eosio.system/eosio.system.wasm $CONTRACTSDIR/eosio.system/src/eosio.system.cpp -I $CONTRACTSDIR/eosio.system/include -I $CONTRACTSDIR/eosio.token/include
eosio-cpp -o ./eosio.token/eosio.token.wasm $CONTRACTSDIR/eosio.token/src/eosio.token.cpp -I $CONTRACTSDIR/eosio.token/include
eosio-cpp -o ./eosio.wrap/eosio.wrap.wasm $CONTRACTSDIR/eosio.wrap/src/eosio.wrap.cpp -I $CONTRACTSDIR/eosio.wrap/include