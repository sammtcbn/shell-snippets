#!/bin/bash
readarray -t my_array < array_ex3_load_from_file.txt

for i in "${my_array[@]}"
do
    echo "$i"
done

# Result:

# $ ./array_ex3_load_from_file.bash
# 111 222 333
