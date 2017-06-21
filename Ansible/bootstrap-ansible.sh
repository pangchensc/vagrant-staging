#!/usr/bin/env bash

# Disable strict host checking

chmod -R 700 /home/vagrant/.ssh/
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R 600 /home/vagrant/.ssh/config
chmod -R 600 /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant .ssh/config

# Setup hostfile

# Auto accept SSH footprint

sudo ssh-keyscan -t rsa 10.0.0.11 10.0.0.12 10.0.0.9 > /etc/ssh/ssh_known_hosts
sudo ssh-keyscan -t dsa 10.0.0.11 10.0.0.12 10.0.0.9 >> /etc/ssh/ssh_known_hosts

# Install EPEL Repo

sudo yum install epel-release -y
sudo yum update -y

# Install Ansible

sudo yum install ansible -y


# Configure Inventory File

cat >> /etc/ansible/hosts <<EOL

[centos]
10.0.0.11
10.0.0.12

[debian]
10.0.0.9

EOL