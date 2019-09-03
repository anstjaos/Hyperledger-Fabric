FABRIC_PATH=/opt/gopath/src/github.com/hyperledger/fabric/peer

echo $FABRIC_PATH



export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer1.org0.example.com:7051

peer chaincode query -C ch1 -n testnetCC -c '{"Args":["query","a"]}'
