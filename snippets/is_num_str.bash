#!/bin/bash
# refer to https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash

function is_num_string ()
{
    local str=$1
    local re='^[+-]?[0-9]+([.][0-9]+)?$'
    if ! [[ $str =~ $re ]] ; then
        # not a number
        return 1
    else
        # is a number
        return 0
    fi
}

if [ -z "${1}" ]; then
    echo "need parameter"
    exit 0
fi

inputStr=$1

if is_num_string $inputStr ; then
    echo "$inputStr is a number"
else
    echo "$inputStr is not a number"
fi

# Result:

# ./is_num_str.bash 100
# 100 is a number

# ./is_num_str.bash 100.1
# 100.1 is a number

# ./is_num_str.bash 100.f2
# 100.f2 is not a number

# ./is_num_str.bash .33
# .33 is not a number

# ./is_num_str.bash 100.33
# 100.33 is a number
