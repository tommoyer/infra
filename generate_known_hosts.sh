#!/bin/bash

full_host_list=$(grep internal.moyer.wtf inventory.ini | awk '{print $1}' | sort | uniq)
short_host_list=$(grep internal.moyer.wtf inventory.ini | awk '{print $1}' | sort | uniq | sed -e 's/.internal.moyer.wtf//')

echo $all_hosts

for host in $full_host_list $short_host_list
do
    ssh-keygen -R "$host"
    ssh-keyscan $host >> ~/.ssh/known_hosts 
done