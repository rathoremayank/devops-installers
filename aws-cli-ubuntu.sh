#!bin/bash

#Upgrading system and Installing unzip 
apt-get upgrade && apt-get update
apt-get install unzip 

#downloading aws-cli package and unzipping it
curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

#launching the installer
sudo ./aws/install

#checking version 
aws2 --version
