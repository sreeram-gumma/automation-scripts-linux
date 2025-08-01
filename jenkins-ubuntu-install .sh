#!/usr/bin/bash

sudo hostnamectl set-hostname "u2-jenkins-ubuntu-24"

sudo apt update -y

sudo apt upgrade -y

sudo apt install openjdk-21-jre -y

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo apt-get install jenkins -y