#!/bin/bash
# ref to https://docwhat.org/bash-checking-a-port-number

function to_int {
    local -i num="10#${1}"
    echo "${num}"
}

function port_is_valid {
    local port="$1"
    local -i port_num=$(to_int "${port}" 2>/dev/null)

    if (( $port_num < 1 || $port_num > 65535 )) ; then
        #echo "*** ${port} is not a valid port" 1>&2
        return 1
    fi
    #echo 'ok'
    return 0
}

function port_is_ok {
    if port_is_valid $1 ; then
        echo "$1 is a valid port "
    else
        echo "$1 is not a valid port"
    fi
}

port_is_ok 1          # => ok
port_is_ok 20         # => ok
port_is_ok 70000      # => *** 70000 is not a valid port
port_is_ok tnenth2    # => *** tnenth2 is not a valid port
port_is_ok thethe     # => *** thethe is not a valid port
port_is_ok 888f88     # => *** 888f88 is not a valid port
port_is_ok 88888f     # => *** 88888f is not a valid port
