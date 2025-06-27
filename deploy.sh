#!/bin/bash

# Update and install Docker
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo usermod -aG docker $USER

# Clone your app repo from GitHub
cd /home/ubuntu
git clone https://github.com/IhaKShetty/webapp_flask_The_lonelyBag_Docker
cd webapp_flask_The_lonelyBag_Docker

# Build Docker image
docker build -t flask-deploy-app .

# Run Docker container
docker run -d -p 5000:5000 flask-deploy-app








