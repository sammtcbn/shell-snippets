#!/bin/bash
v1="23"
v2=$(( v1 -1))
echo $v2           # 22


a1=23
a2=$(( a1 -1))
echo $a2           # 22


b1="23"
b2=$(( ${b1} -1))
echo $b2           # 22
