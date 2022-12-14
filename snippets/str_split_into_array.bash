#!/bin/bash

str="111 222 333"
echo string is ${str}

IFS=' ' read -r -a myarray <<< "$str"

for i in "${myarray[@]}"
do
    echo "array - $i"
done
