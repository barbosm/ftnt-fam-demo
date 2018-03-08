#!/bin/bash

version='1.3.1'
type_='advpn_'

chmod -R +r /srv/ftp/sdwan/$version/*

device='dc01'
ssh admin@$device.sdw "
exec restore config ftp sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1
y"

device='dc02'
ssh admin@$device.sdw "
exec restore config ftp sdwan/v$version/$device.sdw_$type_$version.conf 192.168.0.1
y"

device='s01'
ssh admin@$device.sdw "
exec restore config ftp sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1
y"

device='s02'
ssh admin@$device.sdw "
exec restore config ftp sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1
y"

device='s03'
ssh admin@$device.sdw "
exec restore config ftp sdwan/$version/$device.sdw_$type_$version.conf 192.168.0.1
y"
