#!/bin/bash
# Sample bootstrap script to configure a management server using the bare minimum config required.
# Refer to sk69701 and the ftw_template.txt for all available FTW configuration switches.

hostname='vg-mgmt'
sic_key='abc123'
mgmt_server='true'
fw_gateway='false'
cluster_gateway='false'
dns_primary='1.1.1.1'
timezone='Etc/GMT'
ntp_primary='pool.ntp.org'

# Run bare minimum First Time Wizard config
config_system -s "hostname=${hostname}&ftw_sic_key=${sic_key}&install_security_managment=${mgmt_server}
&install_mgmt_primary=${mgmt_server}&install_security_gw=${fw_gateway}&gateway_daip=false&install_ppak=true
&gateway_cluster_member=${cluster_gateway}&download_info=false&upload_info=false&upload_crash_data=false
&primary=${dns_primary}&ntp_primary=${ntp_primary}&ntp_primary_version=4&mgmt_admin_radio=gaia_admin
&mgmt_gui_clients_radio=any&timezone=${timezone}"
# Reboot
shutdown -r now
