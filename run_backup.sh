#!/bin/bash

version='1.3.1'
#type_='advpn_'
type_='sdwan_'


device='s01'
ssh admin@$device.sdw "
exec backup config ftp /srv/ftp/sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1 root fortinet
"

#device='s02'
#ssh admin@$device.sdw "
#exec backup config ftp /srv/ftp/sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1 root fortinet
#"

#device='s03'
#ssh admin@$device.sdw "
#exec backup config ftp /srv/ftp/sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1 root fortinet
#"

device='dc01'
ssh admin@$device.sdw "
exec backup config ftp /srv/ftp/sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1 root fortinet
"

#device='dc02'
#ssh admin@$device.sdw "
#exec backup config ftp /srv/ftp/sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1 root fortinet
#"

chmod -R +r *
