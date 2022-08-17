#!/bin/bash

#Download and install node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install v8.17.0

node -v
npm -v

#Clone repo

if[[! -d ./microservice-app-example]]; then
	cd 
	git clone https://github.com/bortizf/microservice-app-example.git
	cd ./microservice-app-example/frontend
fi

# install dependencies
npm install

# build application
npm run build > /dev/null 2>&1 &