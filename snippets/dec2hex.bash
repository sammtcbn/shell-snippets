#!/bin/bash

val=9
valhex=$(printf "%04X" $val)
echo $valhex                    # 0009

val=12
valhex=$(printf "%04X" $val)
echo $valhex                    # 000C

val=255
valhex=$(printf "%02X" $val)
echo $valhex                    # FF
