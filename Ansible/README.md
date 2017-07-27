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

git-clone <Git-URL>

copy any playbook you need in your VM environment into the "playbooks/" directory.

For example if you Git files are in the directory /Home/User/, copy ansible playbooks into /Home/User/vagrant-staging/Ansible/playbooks/



Done!

----

# Note

- By default, this Vagrantfile can provision up to any amount nodes specify in NODE_COUNT; however, inventory file will need to be modified on master.

- Centos VM will need be rebooted manually for new Selinux policy to take affect

---
To make sure you have all necessary files configured you can type 
'vagrant status'
You should be able to see hostnames even if they are not created yet

To bring nodes up type:
'vagrant up'
You should see the process of deploying nodes and applying bootstrap scripts

Once the process is done you should be able to see list of VMs running if you type 'vagrant status'

To connect to the Linux node type:
vagrant ssh <Hostname>
you should be able to connect to the node, and in case of master node you should be able to see the playbooks directory in '/home/vagrant'. 

To connect windows node type 
vagrant rdp windows
You will need Microsoft Remote Desktop software installed before trying to connect to windows.
