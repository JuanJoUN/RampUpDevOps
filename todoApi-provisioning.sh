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
fi

#Build microservice
cd ./microservice-app-example/todos-api

npm install

#Run microservice

JWT_SECRET=PRFT TODO_API_PORT=8082 npm start > /dev/null 2>&1 &
