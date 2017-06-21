# Ansible 4 Nodes
----

This Vagrantfile config will provision 4 Linux VMs with Ansible installed on the master. 

The goal is to provide fresh test beds for Ansible playbooks without having to install Ansible on your host machine.

Master - Ansible management node

Centos 1 - Regular VM

Centos 2 - Regular VM

Ubuntu 1 - Regular VM

----

# How to use

Download Vagrant: https://www.vagrantup.com/downloads.html

Download Virtualbox: https://www.virtualbox.org/wiki/Downloads

Clone this repo into your machine and run vagrant up in the same directory as this Vagrantfile.

Done!

----

# Note

- By default, this Vagrantfile can provision up to any amount nodes specify in NODE_COUNT; however, inventory file will need to be modified on master.

- Centos VM will need be rebooted manually for new Selinux policy to take affect


