#!/bin/bash
my_array="John Helen Michael"

for i in ${my_array}
do
    echo "$i"
done

# Result:

# $ ./array_ex2.bash
# John
# Helen
# Michael
