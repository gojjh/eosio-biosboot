FORBUILD="$( jq -r '.FORBUILD' "../.conf" )"

mkdir eosio.bios
mkdir eosio.msig
mkdir eosio.system
mkdir eosio.token
mkdir eosio.wrap

eosio-cpp -o ./eosio.bios/eosio.bios.wasm $FORBUILD/eosio.bios/src/eosio.bios.cpp -I $FORBUILD/eosio.bios/include
eosio-cpp -o ./eosio.msig/eosio.msig.wasm $FORBUILD/eosio.msig/src/eosio.msig.cpp -I $FORBUILD/eosio.msig/include
eosio-cpp -o ./eosio.system/eosio.system.wasm $FORBUILD/eosio.system/src/eosio.system.cpp -I $FORBUILD/eosio.system/include -I $FORBUILD/eosio.token/include
eosio-cpp -o ./eosio.token/eosio.token.wasm $FORBUILD/eosio.token/src/eosio.token.cpp -I $FORBUILD/eosio.token/include
eosio-cpp -o ./eosio.wrap/eosio.wrap.wasm $FORBUILD/eosio.wrap/src/eosio.wrap.cpp -I $FORBUILD/eosio.wrap/include