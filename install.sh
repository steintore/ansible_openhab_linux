#!/bin/bash 
sudo /etc/init.d/openhab stop
cd ~/ansible_raspberry_openhab/
ansible-playbook playbook.yml -i hosts --ask-vault-pass -vvvv --ask-sudo-pass
cp roles/openhab/templates/configurations/transform/* ../openhab/configurations/transform/
sudo /etc/init.d/openhab start