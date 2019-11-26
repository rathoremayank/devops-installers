#!bin/bash

#INSTALLING JAVA 
apt install openjdk-8-jre-headless

#INSTALLING JENKINS 
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins

#STARTING JENKINS
sudo systemctl start jenkins
sudo systemctl status jenkins

#OPENING FIREWALL
sudo ufw allow 8080
sudo ufw status

echo "....................................................................."
echo "Jenkins successfully installed.."
echo  "visit http://ip_address_or_domain_name:8080 to start using Jenkins.." 
