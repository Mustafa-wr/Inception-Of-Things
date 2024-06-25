#!/bin/bash

sudo apt-get update
sudo apt-get install -y curl

while [ ! -f /vagrant/confs/node-token ]; do
  sleep 2
done

TOKEN=$(cat /vagrant/confs/node-token)

curl -sfL https://get.k3s.io | K3S_URL="https://192.168.56.110:6443" K3S_TOKEN="$TOKEN" sh -
