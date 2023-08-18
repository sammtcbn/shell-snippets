#!/bin/bash
argv=$@
echo $argv

shift
shift

argv=$@
echo $argv

# result:
# ./shift_ex1.bash  1  2 3 4 5
#1 2 3 4 5
#3 4 5
