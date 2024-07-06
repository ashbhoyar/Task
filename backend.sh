#! /bin/bash
# git installation
yum install git -y 
# git clone the application repo
git clone https://github.com/koolkishan/chat-app-react-nodejs
cd chat-app-react-nodejs/
# changed name of .env.example to .env
mv server/.env.example server/.env
# for update yarn install    
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg
sudo yum install yarn 
cd server/
# for dependence installing
yarn install 
# for screen free this cmd 
screen -S server -dm yarn start 