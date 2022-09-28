#!/bin/bash

# The script needs to run as root user

# Install prerequisites 
apt update
apt install ca-certificates curl gnupg lsb-release

# Add GPG key
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc//
apt/keyrings/docker.gpg

# setup repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker..
gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo  
tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install docker
apt update
apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
