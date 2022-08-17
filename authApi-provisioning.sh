#!/bin/bash

#Download and install Go 1.18.2

if [[! -d /usr/local/go]]; then
	curl -OL https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
	sudo tar -C /usr/local -xvf go1.18.2.linux-amd64.tar.gz
	echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
	source ~/.profile
	go version
fi

#Clone microservice repo

if[[! -d ./microservice-app-example]]; then
	cd /home/vagrant/
	git clone https://github.com/bortizf/microservice-app-example.git
fi

#Run microservice

cd ./microservice-app-example
export GO111MODULE=on
go mod init github.com/bortizf/microservice-app-example/tree/master/auth-api
go mod tidy
go build > /dev/null 2>&1 &