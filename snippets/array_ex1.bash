#!/bin/bash
my_array=(John Helen Michael)

my_array+=(Arnold Jessie)

if [ ! -z "${my_array}" ]; then
    echo exise
else
    echo not exist
fi
exit 0

unset my_array[1]

for i in "${my_array[@]}"
do
    echo "$i"
done

element_num=${#my_array[@]}

echo "array contains ${element_num} elements"
echo "array index are: ${!my_array[@]}"
echo "array[4] is ${my_array[4]}"
echo "array[1] is ${my_array[1]}"

# Result:

# $ ./array_ex1.bash
# John
# Michael
# Arnold
# Jessie
# array contains 4 elements
# array index are: 0 2 3 4
# array[4] is Jessie
# array[1] is

