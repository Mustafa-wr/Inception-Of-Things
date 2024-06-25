#!/bin/bash

sudo apt-get update
sudo apt-get install -y curl

curl -sfL https://get.k3s.io | sh -

# Allow node to accept traffic from the worker node
sudo iptables -A INPUT -p tcp --dport 6443 -j ACCEPT


sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/confs/node-token

# Enable kubectl access without sudo
sudo chmod 644 /etc/rancher/k3s/k3s.yaml

# Copy kubeconfig for local access
sudo cp /etc/rancher/k3s/k3s.yaml /vagrant/confs/k3s.yaml
sudo chown vagrant:vagrant /vagrant/confs/k3s.yaml
