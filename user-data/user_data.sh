#!/bin/bash
sudo useradd ansibleuser
echo "TestMe@10" | passwd --stdin ansibleuser
