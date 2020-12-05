#How To Install Kubernetes On Ubuntu 18.0

##Step 1: Install Docker

sudo apt-get install docker.io -y

docker version


##Step 2: Start and Enable Docker

sudo systemctl enable docker

sudo systemctl status docker

^C

sudo systemctl start docker

sudo systemctl status docker

^C


##Install Kubernetes

##Step 3: Add Kubernetes Signing Key

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-get install curl


##Step 4: Add Software Repositories 

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" 


##Step 5: Kubernetes Installation Tools

sudo apt-get install kubeadm kubelet kubectl

sudo apt-mark hold kubeadm kubelet kubectl

kubeadm version


##Kubernetes Deployment

##Step 6: Begin Kubernetes Deployment

sudo swapoff –a


##Step 7: Assign Unique Hostname for Each Server Node 

On master: sudo hostnamectl set-hostname master-node
On worker1: sudo hostnamectl set-hostname worker01
On worker2: sudo hostnamectl set-hostname worker02


##Step 8: Initialize Kubernetes on Master Node

On master: sudo kubeadm init --pod-network-cidr=10.244.0.0/16

Output like: 
Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

sudo kubeadm join 10.128.0.13:6443 --token a1ds2b.250ys7gou3b9ufwl \
    --discovery-token-ca-cert-hash sha256:c095c1d857f40a2b85da0de7134c3fbcddd2e8e374c41e8ecbb332ed3c5e2d5e

on master: 

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config 


##Step 9: Deploy Pod Network to Cluster

A Pod Network is a way to allow communication between different nodes in the cluster. This tutorial uses the flannel virtual network.

Enter the following:

sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

Allow the process to complete.

Verify that everything is running and communicating:

kubectl get pods --all-namespaces


##Step 10: Join Worker Node to Cluster 

Enter command copied from previos Step 8: 

sudo kubeadm join 10.128.0.13:6443 --token a1ds2b.250ys7gou3b9ufwl \
    --discovery-token-ca-cert-hash sha256:c095c1d857f40a2b85da0de7134c3fbcddd2e8e374c41e8ecbb332ed3c5e2d5e


##Done
