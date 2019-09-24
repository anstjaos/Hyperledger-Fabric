# Client

configtxgen을 실행하기 위해 Hyperledger Fabric 설치가 필요합니다.  
* * *
## Go lang 설치  
  
### 1. 사전 준비  
<pre><code> sudo apt-get update  
sudo apt-get -y upgrade  
</code></pre>
  
https://golang.org/dl/ // Go 공식사이트에서 최신 버젼을 확인해주세요.  
  
### 2. 설치  
<pre><code> wget https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz  
sudo tar -xvf go1.11.5.linux-amd64.tar.gz  
sudo mv go /usr/local  
</code></pre>  
  
### 3. 환경 변수 설정  
~/.profile 파일 내에 설정 추가   
  
<pre><code>
export GOROOT=/usr/local/go  
export GOPATH=$HOME/MyProjects  
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH  
</code></pre>  
  
.profile 파일 적용  
<pre><code> source .profile </code></pre>  
  
  
## Hyperledger Fabric 설치
  
### 1. 기타 개발 도구 설치  
  
<pre><code> sudo apt install git curl libltdl-dev tree openssh-server net-tools </code></pre>  
  
### 2. Hyperledger Fabric 설치  
  
hyperledger 디렉토리 생성  
<pre><code> mkdir -p $GOPATH/src/github.com/hyperledger/ </code></pre>  

해당 디렉토리로 이동  
<pre><code> cd $GOPATH/src/github.com/hyperledger/ </code></pre>  
  
fabric 1.3 버전 다운로드  
<pre><code> git clone -b release-1.3 https://github.com/hyperledger/fabric </code></pre>  
  
fabric 디렉토리로 이동 후 컴파일
<pre><code>  
cd fabric  
make  
</code></pre>  
unit-test_1 ... 라고 나오는 단위테스트 단계로 들어가면 Ctrl+C 로 종료하셔도 됩니다. 이미 설치가 완료된 상태입니다.  
  
### 3. 환경 설정  
  
.profile 파일에 환경 변수 추가  
<pre><code>  
export FABRIC_HOME=/home/gun/MyProjects/src/github.com/hyperledger/fabric  
export PATH=$GOPATH/bin:$GOROOT/bin:$FABRIC_HOME/.build/bin:$PATH  
</code></pre>  
  
.profile 파일 적용  
<pre><code> source .profile </code></pre>  

* * * 
## 출처 : https://leejonggun.tistory.com/13?category=1027078
