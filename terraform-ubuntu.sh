#!bin/bash 

#creating directory in /opt for installation 
mkdir /opt/terraform/ 
cd /opt/terraform/

#downloading terraform package and unzipping it
wget https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip
unzip terraform*

echo $PATH

#setting the path for the terraform binary 
export PATH=$PATH:/opt/terraform/bin/
source /etc/environment/

#testing version 
terraform -v
