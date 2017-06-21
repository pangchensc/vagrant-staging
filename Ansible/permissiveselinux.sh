#!/usr/bin/env bash

setenforce 0
sed -i 's/SELINUX=\(enforcing\|disabled\)/SELINUX=permissive/g' /etc/selinux/config
sudo reboot now
