#!/bin/bash
ip=172.22.12.118
id=sam
pw=1234

function failed()
{
    echo "$*" >&2
    exit 1
}

function remote_download ()
{
    local srcf=$1
    sshpass -p ${pw} scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${id}@${ip}:${srcf} . || failed "download fail"
}

path=/home/sam/file.txt
remote_download ${path}
