# Vagrant-cp_R80.40-T294
Sample Vagrant file and Boostrap for use with TenZen/check_point_r80.40_T294_base Vagrant box:
* https://app.vagrantup.com/TenZen/boxes/check_point_r80.40_T294_base

## Credentials
The admin/expert password is the usual !vagrant password.

## Requirements
* Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Vagrant: https://www.vagrantup.com/downloads

## Vagrant Box Build
The Vagrant box is running Check Point Gaia R80.40 T294 prepared with vagrant defaults to allow the use of 'vagrant ssh'
to connect to the box in expert mode.  The box is also configured to use dhcp for eth0 and to use the host OS as the 
default gateway.

The current box's defaults are 4 cores, 4Gb RAM, 3 NICs with no guest additions (not possible due to harderdened OS).  
The current box's MAC address for the NAT interface is: 08002748C85C

The first time wizard is run via the bootstrap.sh scripts which use the cli command as described in (sk69701).  The 
sample management server bootstrap, mgmt_bootstrap.sh, is a bare minimum config for deploying a management server.

## Management API
By default, the Management API only accepts connections from localhost, change this via SmartConsole to the management 
server to change the Management API settings to accept connections from other sources:
> Manage & Settings > Blades > Management API : Advanced Settings... > Access Settings

This will require a restart of the API process using 'api restart' via CLI.  

It is possible to modify this setting via CLI through the mgmt_api_profile_settings.xml file however this does not 
appear to survive a reboot unless it is configured via SmartConsole.