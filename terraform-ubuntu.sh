#!bin/bash 

#creating directory in /opt for installation 
mkdir /opt/tf-bin/ 
cd /opt/tf-bin/

#downloading terraform package and unzipping it
wget https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip
unzip terraform*

echo $PATH

#setting the path for the terraform binary 
export PATH=$PATH:/opt/tf-bin/
source /etc/environment/

#testing version 
terraform -v
