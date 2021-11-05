#!/bin/bash

echo "#Architecture: `uname -a`
#CPU physical : `nproc`
#vCPU : `cat /proc/cpuinfo | grep processor | wc -l`
#Memory Usage: `free -m | awk '/Mem/ {printf "%s/%sMB (%.2f%%)", $3, $2, ($3/$2)*100}'`
#Disk Usage: `df | awk '{um+=$3} {fm+=$2} END {printf("%.2f/%.2fGb (%.2f%%)"), um/1000000, fm/1000000, um*100/fm}'`
#CPU load: `top -bn1 | grep "load average" | awk '{printf("%.2f%%"), $10}'`
#Last boot: `who | awk '{print $3, $4}'`
#LVM use: `if [ $(lsblk | grep "LVM" | wc -l) -ne 0 ]; then echo "yes"; else echo "no"; fi`
#Connexions TCP : `ss -s | grep "estab" | awk '{print $4}' | tr -d ','` ESTABLISHED
#User log: `w -h | wc -l`
#Network: IP `hostname -I` (`ip link show | grep "ether" | awk '{print $2}'`)
#Sudo : `cat /var/log/sudo/sudo_history | grep -a  "COMMAND" | wc -l` cmd
"
