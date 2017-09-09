#!/usr/bin/env bash
set -e

curl https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz > go1.9.linux-amd64.tar.gz

echo "d70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79"  go1.9.linux-amd64.tar.gz" | sha256sum -c

tar xzf go1.9.linux-amd64.tar.gz

export GOROOT=/libpostal/go
export GOPATH=/libpostal/workspace
export PATH=$PATH:/libpostal/go/bin

go get github.com/johnlonganecker/libpostal-rest

go install github.com/johnlonganecker/libpostal-rest
