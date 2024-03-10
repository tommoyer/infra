#!/bin/bash

sudo /usr/sbin/adduser ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
sudo su - ansible -c "ssh-import-id-lp tom-tom"
