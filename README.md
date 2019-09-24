# Hyperledger-Fabric
VM에서 실행하기 위해 사전 작업이 필요합니다.  
https://github.com/hlkug/meetup/blob/master/201903/%EC%82%AC%EC%A0%84%20%EC%9E%91%EC%97%85.md 을 참고하여주세요.  
  
* * *
peer 폴더 안 docker-compose.yaml의 extra_hosts IP를 변경해주세요.  
  
## 1. Orderer 구동  
Orderer들을 구동하여 세 개의 서버가 통신이 잘 되는지 확인해주세요.  
  
## 2. Peer 구동
Peer 컨테이너를 모두 구동해주세요.  
  
## 3. CLI 실행
각 peer의 CLI를 실행하여 명령어를 수행합니다.  
<pre><code> docker exec -it cli /bin/bash  
cd channel-artifacts  
</code><pre>  
  
### peer0
<pre><code> ./create-channel.sh  
./join-channel-peer0.sh  
./installCCpeer0.sh  
./instantiateCC.sh
</code></pre>

### peer0 제외 나머지 peer
<pre><code> ./fetch-channel.sh  
./join-channel-peer*.sh  
./installCCpeer*.sh
</code></pre>  
  
이 후 각 peer에 있는 invoke.sh과 query.sh을 실행하여 테스트하시면 됩니다.  
