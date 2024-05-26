#!/bin/bash

# Update the package index
sudo yum update -y

# Install Git
sudo yum install -y git

# Install Docker prerequisites
sudo yum install -y docker

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Start Docker service
sudo systemctl start docker

# Enable Docker service to start on boot
sudo systemctl enable docker

# Configure Git user settings
git config --global user.name "Gowdhamraman"
git config --global user.email "gowdham93@gmail.com"

# Download Git repository
git clone https://github.com/Gowdhamraman/Git-test.git

# List files in the cloned repository
ls Git-test
