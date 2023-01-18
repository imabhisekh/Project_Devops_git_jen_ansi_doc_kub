#!/bin/bash

# Update package manager
apt-get update

# Install dependencies
apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update

# Install kubectl
apt-get install -y kubectl

# Download the latest version of Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

# Install Minikube to /usr/local/bin
install minikube /usr/local/

# Install a hypervisor(virtualbox)
#apt-get install -y virtualbox

# Start Minikube
#minikube start --vm-driver=virtualbox
