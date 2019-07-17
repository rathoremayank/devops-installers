#!bin/bash
sudo apt-get install docker.io -y 

sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart
