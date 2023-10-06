#!/bin/bash
allinterfaces=`ip -o link show | awk -F': ' '{print $2}'`
#echo ${allinterfaces}

formatStr="%-12s\t%-17s\n"

printf "${formatStr}" "Interface" "MAC"
printf "${formatStr}" "------------" "-----------------"

for interface in $allinterfaces; do
    #echo ${interface}

    if [ -e /sys/class/net/${interface} ]; then
        MAC=$(cat /sys/class/net/${interface}/address)
    else
        MAC=""
    fi
    #echo ${MAC}

    printf "${formatStr}" ${interface} ${MAC}
done
