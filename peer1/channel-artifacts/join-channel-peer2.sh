FABRIC_PATH=/home/anstjaos/MyProjects/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer2:7051
peer channel join -b ch1.block
