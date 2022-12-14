#!/bin/bash
# refer to https://github.com/sameersbn/docker-redmine/blob/master/assets/runtime/functions
# Compares two version strings `a` and `b`
# Returns
#   - negative integer, if `a` is less than `b`
#   - 0, if `a` and `b` are equal
#   - non-negative integer, if `a` is greater than `b`
function vercmp()
{
  expr '(' "$1" : '\([^.]*\)' ')' '-' '(' "$2" : '\([^.]*\)' ')' '|' \
       '(' "$1.0" : '[^.]*[.]\([^.]*\)' ')' '-' '(' "$2.0" : '[^.]*[.]\([^.]*\)' ')' '|' \
       '(' "$1.0.0" : '[^.]*[.][^.]*[.]\([^.]*\)' ')' '-' '(' "$2.0.0" : '[^.]*[.][^.]*[.]\([^.]*\)' ')' '|' \
       '(' "$1.0.0.0" : '[^.]*[.][^.]*[.][^.]*[.]\([^.]*\)' ')' '-' '(' "$2.0.0.0" : '[^.]*[.][^.]*[.][^.]*[.]\([^.]*\)' ')'
}

function show_ver_compare ()
{
    ret=$(vercmp $1 $2)
    if [[ $ret -lt 0 ]]; then
        str="<"
    elif [[ $ret -gt 0 ]]; then
        str=">"
    elif [[ $ret -eq 0 ]]; then
        str="="
    fi
    echo $1 $str $2 , ret=$ret
}

show_ver_compare "1.0.0" "1.0.1"
show_ver_compare "0.0.1" "1.0.0"
show_ver_compare "0.2.1" "0.1.9"
show_ver_compare "0.3.4" "0.3.4"
show_ver_compare "0.3.4" "0.3.44"
show_ver_compare "0.4.123" "0.4.009"
show_ver_compare "10.4.123" "0.4.121"

# Result
# $ ./vercmp.bash
# 1.0.0 < 1.0.1 , ret=-1
# 0.0.1 < 1.0.0 , ret=-1
# 0.2.1 > 0.1.9 , ret=1
# 0.3.4 = 0.3.4 , ret=0
# 0.3.4 < 0.3.44 , ret=-40
# 0.4.123 > 0.4.009 , ret=114
#10.4.123 > 0.4.121 , ret=10
