#!/bin/bash
# Installing Jenkins on RHEL 7/8, CentOS or Amazon Linux OS
# You can execute this script as user-data when launching your EC2 VMs
sudo timedatectl set-timezone Nigeria/Lagos
sudo hostnamectl set-hostname jenkins
sudo yum install wget -y
sudo wget -0 /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
# Add additional dependencies for the Jenkins package
sudo yum install java-11-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
# Start jenkins
# You can enable the jenkins service to start at boot with the command:
sudo systemctl enable jenkins
# You can start the jenkins service with the command:
sudo systemctl start jenkins
# You can check the status of the jenkins service with the command:
sudo systemctl status jenkins
echo "end of jenkins installation"
sudo su – ec2-user
