#!/bin/bash

hexval=1234

echo original hex string : $hexval

high_byte="0x${hexval:0:2}"
low_byte="0x${hexval:2:2}"

echo high byte $high_byte  # 0x12
echo low byte $low_byte    # 0x34
