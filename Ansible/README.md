# Ansible 3 Nodes
----

This Vagrantfile config will provision 3 CentOS VMs with Ansible installed on the master. 

The goal is to provide fresh test beds for Ansible playbooks without having to install Ansible on your host machine.

Master - Ansible management node

Node 1 - Regular VM

Node 2 - Regular VM

----

# How to use

Download Vagrant: https://www.vagrantup.com/downloads.html

Download Virtualbox: https://www.virtualbox.org/wiki/Downloads

Clone this repo into your machine and run vagrant up in the same directory as this Vagrantfile.

Done!

----

# Note

By default, this Vagrantfile can provision up to any amount nodes specify in NODE_COUNT; however, inventory file will need to be modified on master.
