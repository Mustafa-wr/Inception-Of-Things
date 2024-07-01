#!/bin/bash

# Update and install dependencies
sudo apt-get update
sudo apt-get install -y curl

# Load the K3S token from a file
K3S_TOKEN=$(cat /vagrant/token.env)

# Install K3s agent
curl -sfL https://get.k3s.io | K3S_URL="https://192.168.56.110:6443" K3S_TOKEN="$K3S_TOKEN" sh -

# Allow passwordless SSH for vagrant user
mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
