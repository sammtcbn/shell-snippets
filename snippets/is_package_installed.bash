#!/bin/bash

function is_package_installed ()
{
    output=$(dpkg -l $1)
    ret_code=$?
    if [ $ret_code = 0 ]; then
        #echo installed
        return 0
    else
        #echo not installed
        return 1
    fi
}

function show_is_package_installed ()
{
    package=$1
    if is_package_installed $package ; then
        echo "$package installed"
    else
        echo "$package is not installed"
    fi
}

show_is_package_installed build-essential
show_is_package_installed vim
show_is_package_installed sudo
show_is_package_installed abcdefg

# Result:
# $ ./is_package_installed.bash
# build-essential installed
# vim installed
# sudo installed
# dpkg-query: no packages found matching abcdefg
# abcdefg is not installed
