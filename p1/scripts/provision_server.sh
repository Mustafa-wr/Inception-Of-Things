#!/bin/bash

# Update and install dependencies
sudo apt-get update
sudo apt-get install -y curl

# Install K3s server
curl -sfL https://get.k3s.io | sh -

# Install kubectl
sudo apt-get install -y kubectl

rm -f /vagrant/token.env

sudo cat /var/lib/rancher/k3s/server/token >> /vagrant/token.env

# Copy K3s config to default kube config location
mkdir -p /home/vagrant/.kube
sudo cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config
sudo chown vagrant:vagrant /home/vagrant/.kube/config

# Allow passwordless SSH for vagrant user
mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
