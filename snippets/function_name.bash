#!/bin/bash
function fun_a()
{
    echo ${FUNCNAME[0]} ...
}

function fun_b()
{
    echo ${FUNCNAME[0]} ...
}

fun_a
fun_b
