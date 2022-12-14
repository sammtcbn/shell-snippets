#!/bin/bash

function is_service_running ()
{
    systemctl is-active --quiet $1
    ret_code=$?
    if [ $ret_code = 0 ]; then
        #echo running
        return 0
    else
        #echo not running
        return 1
    fi
}

function show_is_service_running ()
{
    service=$1
    if is_service_running $service ; then
        echo "$service is running"
    else
        echo "$service is not running"
    fi
}

show_is_service_running syslog
show_is_service_running sshd
show_is_service_running abcd

# Result:
# $ ./is_service_running.bash
# syslog is running
# sshd is running
# abcd is not running
