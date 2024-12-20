#!/bin/bash

function calculate_len() {
    local start_addr=$1
    local end_addr=$2
    local start_dec=$((start_addr))
    local end_dec=$((end_addr))

    # Calculate the difference
    length=$((end_dec - start_dec +1))

    # Print the result in both decimal and hexadecimal
    #echo "Decimal length: $length"
    #printf "Hexadecimal length: 0x%X\n" "$length"
    #printf "%02X\n" $length
    printf "%04X\n" "$length"
}

start_addr=0x1800
end_addr=0x27DF

length=$(calculate_len $start_addr $end_addr)

echo $start_addr to $end_addr , "Length: 0x$length"
