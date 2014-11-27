An ansible playbook to install openHAB on a raspberry pi
========================================================

This setup uses [Ansible](http://docs.ansible.com) to automate provisioning of the raspberry pi

## Install the operating system following instructions here:
http://www.raspberrypi.org/documentation/installation/installing-images/README.md


## Software being setup by this
	* [OpenHAB] (http://github.com/openhab/openhab)

* log in via ssh (pi/raspberry)
* copy-ssh-key to the pi
* run 'sudo raspi-config' to configure things, change password etc
* clone this repository 'git clone https://github.com/steintore/ansible_openhab' locally
* cd ansible_openhab
* cp hosts_example hosts <- edit it to fit the IP of you raspberry pi

Run the playbook:
'''ansible-playbook playbook.yml -i hosts --ask-vault-pass