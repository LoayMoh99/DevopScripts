#! /bin/bash

#uninstall any older version of dcoker:
sudo apt-get remove docker docker-engine docker.io containerd runc


sudo apt-get update
yes | sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#install docker and docker compose
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
yes | sudo apt-get install docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce
sudo apt-get install docker-ce
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo gpasswd -a ${USER} docker
sudo apt update

#After exit and reentering again -> docker group is updated#
#Creating the main folder:
mkdir flicker_clone
cd flicker_clone

#pulling the frontend repo:
git clone https://github.com/LoayMoh99/flickr_frontend.git
#pulling the backend repo:
git clone https://github.com/LoayMoh99/Team2_backend.git
#pulling the devops repo:
git clone 

#For certbot SSL:
'
sudo apt update
sudo apt install snapd


'
