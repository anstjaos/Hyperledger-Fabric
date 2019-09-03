FABRIC_PATH=/home/anstjaos/MyProjects/testnet
echo $FABRIC_PATH

CORE_PEER_LOCALMSPID="Org0MSP" \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp \
CORE_PEER_ADDRESS=peer0:7051 \
peer channel create -o orderer0.example.com:7050 -c ch1 -f ch1.tx
