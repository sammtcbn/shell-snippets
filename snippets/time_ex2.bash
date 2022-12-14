#!/bin/bash

# date +%s returns the number of seconds since the epoch

function Get_Time_in_NS()
{
    echo $(($(date +%s%N)))
}

function Get_Time_in_MS()
{
    echo $(($(date +%s%N)/1000000))
}

function Get_Time_in_Sec()
{
    echo $(date +%s)
}

Get_Time_in_NS
Get_Time_in_MS
Get_Time_in_Sec

# Result
# $ ./time_ex2.bash
# 1611507622900254243
# 1611507622903
#1611507622
