#!/bin/bash
groupa=(sam terry jerry)
groupb=(neo carol michael)

all=( "${groupa[@]}" "${groupb[@]}" )

for g in "${all[@]}";
do
    echo -n "$g "
done
