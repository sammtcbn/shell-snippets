#!/bin/bash
echo run 'echo -n "1234AAFF" | xxd -r -p > hex_str_to_hex_bin.bin'
echo -n "1234AAFF" | xxd -r -p > hex_str_to_hex_bin.bin
echo

echo run 'hexdump -C -v hex_str_to_hex_bin.bin'
hexdump -C -v hex_str_to_hex_bin.bin
