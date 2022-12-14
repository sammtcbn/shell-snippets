#!/bin/bash
ip=172.22.12.46
id=sam
pw=12345
rootpw=45678

function remote_exec ()
{
    sshpass -p ${pw} ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${id}@${ip} "${@}"
}

function remote_root_exec ()
{
    sshpass -p ${pw} ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${id}@${ip} "echo ${rootpw} | sudo -S ${@}"
}

remote_exec ls -la /tmp
remote_root_exec ls -la /root
