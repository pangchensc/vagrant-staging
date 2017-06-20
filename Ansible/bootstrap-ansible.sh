#!/usr/bin/env bash

# Disable strict host checking

chmod -R 700 /home/vagrant/.ssh/
echo 'Host *' >> /home/vagrant/.ssh/config
echo 'StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
echo 'UserKnownHostsFile /dev/null' >> /home/vagrant/.ssh/config
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R 600 /home/vagrant/.ssh/config
chmod -R 600 /home/vagrant/.ssh/id_rsa
chmod -R 644 /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant .ssh/config

# Setup hostfile

cat >> /etc/hosts <<EOL

# vagrant nodes

10.0.0.10 master
10.0.0.11 centos1
10.0.0.12 centos2
10.0.0.9 ubuntu
EOL

# Auto accept SSH footprint

sudo ssh-keyscan -t rsa centos1 centos2 ubuntu > /etc/ssh/ssh_known_hosts
sudo ssh-keyscan -t dsa centos1 centos2 ubuntu >> /etc/ssh/ssh_known_hosts

# Install EPEL Repo

sudo yum install epel-release -y
sudo yum update -y

# Install Ansible

sudo yum install ansible -y


# Configure Inventory File

echo '[nodes]' >> /etc/ansible/hosts
echo 'centos1' >> /etc/ansible/hosts
echo  'centos2' >> /etc/ansible/hosts
echo  'ubuntu' >> /etc/ansible/hosts