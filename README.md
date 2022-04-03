step1: truffle migrate --network testnet  // (--reset) option 
step2: truffle run verify Keeys --network testnet
or
truffle run verify Swaps@0x79D781883EA7E8216Df5A6a256Eb147F51aEDc50  --network testnet

reset only swaps contract
// truffle migrate --network testnet -f 3 --to 3 --reset


//deploy: 
KEEYS CONTRACT: 
https://testnet.bscscan.com/address/0x61FE978c6926eB8e82bd47e95A88BB5C3Ad79E6d#code

step1: call initialize to intitial contract
step2: issueToken

SWAP CONTRACT: 
https://testnet.bscscan.com/address/0x79D781883EA7E8216Df5A6a256Eb147F51aEDc50#code

// call initialize 
//approve referToken
// swap token