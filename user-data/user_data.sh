#!/bin/bash
sudo useradd ansibleuser
echo "TestMe@10" | passwd --stdin ansibleuser
sudo echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
sudo service sshd restart
