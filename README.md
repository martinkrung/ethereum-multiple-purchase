ethereum-multiple-purchase.sh
==========================

This tool generates multiple ethereum wallets with a 48 char random password. Its only usable in the Genesis Sale of Ether. Pay btc to the generated btc addresses and fininalize it. 

For more instruction see here https://github.com/ethereum/pyethsaletool or http://www.ethereum.org. 

Befor buying some ether, please read: https://www.ethereum.org/pdfs/TermsAndConditionsOfTheEthereumGenesisSale-preview.pdf and https://www.ethereum.org/pdfs/EtherProductPurchaseAgreement.pdf

Requirement
------------
 * https://github.com/ethereum/pyethsaletool
 * Linux with bash

WARNING
------------
 After the point you payed some btc to the intermediate address NEVER rerun the script in the same folder. IT WILL CLEAN UP EVERYTHING ITS GENERATES!! YOU WILL LOSE YOUR WALLET OR YOUR PASSWORDS!!
 
 Move out the generated files (paybtc.sh, finalize.sh, pw.txt, list.sh) and generated folders. 

Usage
------------
 * Copy ethereum-multiple-purchase.sh to pyethsaletool folder
 * Modify the first lines as you wish
 * run it: bash ethereum-multiple-purchase.sh
 * to pay with bitcoind run paybtc.sh 
 * if you see on your bitcoin client all payment are ok, use finalize.sh
 * run list.sh to see if your wallets are loaded with ether


Donate
------

* Bitcoin payments: 19RKBsSLbaPFdmMwsQhsBKrZdiprpt4fE

License
-------

ethereum-multiple-purchase.sh is free and unencumbered public domain software. For more
information, see <http://unlicense.org/> or the accompanying UNLICENSE file.

Disclaimer
-----------
I am not an member of the ethereum dev team nor do I have any connection to them. DON'T LOSE YOUR WALLET OR YOUR PASSWORD!



