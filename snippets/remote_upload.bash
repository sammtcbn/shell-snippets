#!/bin/bash
ip=172.22.12.118
id=sam
pw=1234

function failed()
{
    echo "$*" >&2
    exit 1
}


function remote_upload ()
{
    local srcf=$1
    local destdir=$2
    sshpass -p ${pw} scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $srcf ${id}@${ip}:${destdir} || failed "upload fail"
}

fn=file.txt
remotedir=/home/sam
remote_upload ${fn} ${remotedir}
