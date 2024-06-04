#!/bin/bash

function device_writebyte_zero()
{
    devicenode=$1
    addr=$2
    #echo ${devicenode} ${addr}

    if [ ! -f ${devicenode} ]; then
        echo "${devicenode} not found"
        return
    fi

    dd if=/dev/zero of=/tmp/zero.bin bs=1 count=1

    # 0x008000 will convert to 0x8000 then as decimal
    dd if=/tmp/zero.bin of=${devicenode} bs=1 seek=$((${addr}))
}

mydev="/dev/mtd1"

device_writebyte_zero ${mydev} "0x80005"

# 0x80007 = 524295
device_writebyte_zero ${mydev} 524295

# show result
hexdump -C -v ${mydev} -s 0x80000 -n 64
