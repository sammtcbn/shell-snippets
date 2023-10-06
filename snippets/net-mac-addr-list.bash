#!/bin/bash
allinterfaces=`ip -o link show | awk -F': ' '{print $2}'`
#echo ${allinterfaces}

printf '%-12s\t%-17s\n' "Interface"    "MAC"
printf '%-12s\t%-17s\n' "------------" "-----------------"

for interface in $allinterfaces; do
    #echo ${interface}

    if [ -e /sys/class/net/${interface} ]; then
        MAC=$(cat /sys/class/net/${interface}/address)
    else
        MAC=""
    fi
    #echo ${MAC}

    printf '%-12s\t%-17s\n' ${interface} ${MAC}

done
