#!/bin/bash
IFS=$'\n' read -d '' -r -a my_array < array_ex4_load_from_file.txt

for i in "${my_array[@]}"
do
    echo "$i"
done

# Result:

# $ ./array_ex4_load_from_file.bash
# aaa
# bbb
# ccc
