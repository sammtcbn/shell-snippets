#!/bin/bash

function cmd_exists ()
{
    if ! type $1> /dev/null 2>&1; then
        return 1
    else
        return 0
    fi
}

function env_check_cmd ()
{
    local cmd=$1
    if cmd_exists $cmd ; then
        echo "$cmd found"
    else
        echo "$cmd not found"
    fi
}

function env_check ()
{
    env_check_cmd ip
    env_check_cmd hostname
    env_check_cmd awk
    env_check_cmd mosquitto_pub
    env_check_cmd json_pp
    env_check_cmd test12345
}

env_check
