#!/bin/bash
sudo useradd ansibleuser
echo "TestMe@10" | passwd --stdin ansibleuser
sudo sed -i 's/#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config
sudo service sshd restart
