#!/usr/bin/env bash

# Install Go 1.24
wget https://go.dev/dl/go1.24.11.linux-amd64.tar.gz
tar xvzf go1.24.11.linux-amd64.tar.gz
PATHGOBIN="${PWD}/go/bin"

echo "export PATH=\"\$PATH:$PATHGOBIN\"" >> ~/.profile
. ~/.profile


sudo apt update
sudo apt install libgmp-dev  libssl-dev  make gcc g++ -y

mkdir -p ./go/src/github.com/harmony-one
cd ./go/src/github.com/harmony-one
git clone https://github.com/harmony-one/mcl.git
git clone https://github.com/harmony-one/bls.git
git clone https://github.com/harmony-one/harmony.git
git clone https://github.com/harmony-one/harmony-test.git
cd harmony
go mod tidy
make