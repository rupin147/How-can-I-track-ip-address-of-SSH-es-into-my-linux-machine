#!/bin/bash
clear
echo -e "\n\n"
echo -e "\t\t\tNumber_of_times_ssh  \tIP Address"
a=`sudo netstat -tnpa | grep ESTABLISHED.*sshd | grep -Po "\d+\.\d+\.\d+\d+\.\d+" | sort | uniq -c > /tmp/ip`
awk '{printf "\t\t\t\t"$1"\011""\011"$2}' /tmp/ip
echo -e "\n"
