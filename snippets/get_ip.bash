#!/bin/bash
function get_ip ()
{
    if [ -z $1 ]; then
        return
    fi
    interfacetmp=$1

    # check if interface exist
    ip addr show ${interfacetmp} > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        return
    fi

    local iptmp=$(ip addr show ${interfacetmp} | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
    echo ${iptmp}
}

function get_all_interface ()
{
    local all_interface=$(ip -o -4 addr list | awk '{print $2}' | tr '\n' ' ')
    echo ${all_interface}
}

for iface in $(get_all_interface)
do
    echo ${iface} ip is $(get_ip ${iface})
done
