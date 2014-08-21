#!/bin/sh
start=1
stop=9
btcperwallet=0.01
domain=mydomain.com
rm paybtc.sh
rm finalize.sh
rm pw.txt
rm list.sh
for i in $(seq -f "%03g" $start $stop)
do
    rm -rfv $i
    echo $i
    mkdir $i
    #pw=`pwgen -1 -s -y 48`
    pw=`cat /dev/urandom | tr -cd [:graph:] | tr -d "[\']"  | head -c 48 ; echo`
    echo $i@$domain $pw ${i}/${i}_ethereum_wallet.json >> pw.txt
    echo $pw > ${i}/${i}_ethereum_wallet.pw
    echo python pyethsaletool.py genwallet -p "${pw}" -e $i@$domain  -w ${i}/${i}_ethereum_wallet.json
    python pyethsaletool.py genwallet -p "${pw}" -e $i@$domain  -w ${i}/${i}_ethereum_wallet.json
    echo python pyethsaletool.py getbtcprivkey -p "${pw}" -w ${i}/${i}_ethereum_wallet.json
    python pyethsaletool.py getbtcprivkey -p "${pw}" -w ${i}/${i}_ethereum_wallet.json
    echo python pyethsaletool.py getethprivkey -p "${pw}" -w ${i}/${i}_ethereum_wallet.json
    python pyethsaletool.py getethprivkey -p "${pw}" -w ${i}/${i}_ethereum_wallet.json
    echo python pyethsaletool.py getbtcaddress -w ${i}/${i}_ethereum_wallet.json
    btc=`python pyethsaletool.py getbtcaddress -w ${i}/${i}_ethereum_wallet.json`
    echo ./bitcoind sendtoaddress $btc $btcperwallet >> paybtc.sh
    echo python pyethsaletool.py finalize -p \'"${pw}"\' -w ${i}/${i}_ethereum_wallet.json >> finalize.sh
    echo python pyethsaletool.py list -w ${i}/${i}_ethereum_wallet.json >> list.sh
done
