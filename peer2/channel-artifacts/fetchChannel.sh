FABRIC_PATH=/opt/gopath/src/github.com/hyperledger/fabric/peer
echo $FABRIC_PATH

CORE_PEER_LOCALMSPID="Org1MSP" \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto/peerOrganizations/org1.example.com/peers/peer2.org1.example.com/tls/ca.crt \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp \
CORE_PEER_ADDRESS=peer2.org1.example.com:7051 \
peer channel fetch 0 ch1.block -o orderer0.example.com:7050 -c ch1 --cafile $FABRIC_PATH/crypto/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

