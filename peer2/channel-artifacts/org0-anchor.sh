FABRIC_PATH=/home/anstjaos/MyProjects/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer0.example.com:7051
peer channel create -o orderer0.example.com:7050 -c ch1 -f Org0MSPanchors.tx
