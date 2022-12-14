#!/bin/bash

current_date_str=$(date +%F)

function exitp() {
    echo "$1"
    exit 1
}

function remove_file() {
    rm -rf $1 
    echo "rm -rf $1 ... done"
}

function remove_file_byroot() {
    sudo rm -rf $1
    echo "rm -rf $1 ... done"
}

# sample

target_file_name=/tmp/${current_date_str}.txt

cat ${target_file_name} || exitp "${target_file_name} file not found"

