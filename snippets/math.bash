#!/bin/bash

function bc_calc()
{
    local exp="$1"
    local ret=`echo "${exp}" | bc -l`
    echo $ret
}

function node_calc()
{
    local exp="$1"
    local ret=$(node -pe ${exp})
    echo $ret
}

function float2int()
{
    local f="$1"
    local ret=${f%.*}
    echo $ret
}

function two_digits_after_decimal()
{
    local f="$1"
    local ret=$(printf %.2f ${f})
    echo $ret
}

val=$(two_digits_after_decimal "123.456789")
echo $val

val=$(node_calc "10.3+10.5")
echo $val

val=$(bc_calc "10+10")
echo $val

val=$(bc_calc "10*10/2-3.3")
echo $val

val=$(float2int "$val")
echo $val

val=$(float2int "100")
echo $val

val=$(float2int "100.123")
echo $val

# Result:
# $ ./math.bash
# 123.46
# 20.8
# 20
# 46.70000000000000000000
# 46
# 100
# 100
