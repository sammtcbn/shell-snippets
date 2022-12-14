#!/bin/bash

my_array=(John Helen Michael Joe Arnold)

let "cnt=0"

for i in ${my_array[@]}
do
    let "cnt++"
    #let "cnt=cnt+1"
    #cnt=$((cnt+1))
    #((cnt=cnt+1))
done

echo total is ${cnt}
