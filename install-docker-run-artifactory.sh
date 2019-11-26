#bin/bash

apt-get update -y; apt-get upgrade -y

apt-get install docker.io -y 

docker run -dp 8081:8081 --name master-artifactory docker.bintray.io/jfrog/artifactory-oss:latest

