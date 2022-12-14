#!/bin/bash
declare -A matrix
matrix[0,0]=aaa
matrix[0,1]=bbb
matrix[0,2]=ccc
matrix[1,0]=ddd
matrix[1,1]=eee
matrix[1,2]=fff

for ((i=0;i<2;i++)) do
  for ((j=0;j<3;j++)) do
    echo matrix[${i},${j}] = ${matrix[${i},${j}]}
  done
done

echo total number ${#matrix[@]}
