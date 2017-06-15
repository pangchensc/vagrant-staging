#!/usr/bin/env bash

# Install EPEL Repo

sudo yum install epel-release -y
sudi yum update -y
# Install Ansible

sudo yum install ansible -y


# Configure host file

echo '[node]' >> /etc/ansible/hosts
echo 'node1' >> /etc/ansible/hosts
echo  'node2' >> /etc/ansible/hosts

# Disable strict host checking

echo 'Host 10.0.*.*' >> /home/vagrant/.ssh/config
echo 'StrictHostKeyChecking no' >> /home/vagrant/.ssh/config
echo 'UserKnownHostsFile /dev/null' >> /home/vagrant/.ssh/config
chmod -R 700 /home/vagrant/.ssh/
chmod -R 600 /home/vagrant/.ssh/config

cat >> /etc/hosts <<EOL

# vagrant nodes

10.0.0.10 mgmt
10.0.0.11 node1
10.0.0.12 node2
EOL

ssh-keyscan node1 node2 >> /home/vagrant/.ssh/known_hosts

