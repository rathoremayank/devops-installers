#!bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

#Oracle JDK 8
sudo apt-get install oracle-java8-installer

#Oracle JDK 9
#sudo apt-get install oracle-java9-installer

#Managing Java
sudo update-alternatives --config java

echo "Setting JAVA_HOME..."
echo "JAVA_HOME="/usr/lib/jvm/java-8-oracle"" >> /etc/environment

echo $JAVA_HOME
