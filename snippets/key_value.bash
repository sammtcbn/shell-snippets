#!/bin/bash
declare -A matrix
matrix[2330]=台積電
matrix[台積電]=2330
matrix[2382]=廣達
matrix[廣達]=2382

echo total is ${#matrix[@]}

echo 2382 is  ${matrix[2382]}
echo 台積電 is ${matrix[台積電]}
