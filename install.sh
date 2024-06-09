#!/bin/bash

# Update the packages
sudo yum update -y

# Install Git, Docker, and Jenkins
sudo yum install -y git docker

# Install Java (required for Jenkins)
sudo yum install java-17-amazon-corretto -y

# Add Jenkins repository and import the GPG key
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins
sudo yum install -y jenkins

# Enable Docker service
sudo systemctl enable docker

# Start Docker service
sudo systemctl start docker

# Enable Jenkins service
sudo systemctl enable jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Configure Git user settings
git config --global user.name "Gowdhamraman"
git config --global user.email "gowdham93@gmail.com"

# Download Git repository
git clone https://github.com/Gowdhamraman/Git-test.git

# List files in the cloned repository
ls Git-test
