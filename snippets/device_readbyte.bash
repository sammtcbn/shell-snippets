#!/bin/bash

function device_readbyte()
{
    devicenode=$1
    addr=$2
    #echo ${devicenode} ${addr}

    # 0x008000 will convert to 0x8000 then as decimal
    dd if=${devicenode} bs=1 skip=$((${addr})) count=1 2>/dev/null | hexdump -v -e '1/1 "%02x"'
}

mydev="/dev/mtd5"

# show
hexdump -C -v ${mydev} -s 0x9000 -n 64

device_readbyte ${mydev} "0x9000"

# 0x9000 = 36864
device_readbyte ${mydev} 36864

