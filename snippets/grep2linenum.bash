#!/bin/bash
function grep2linenum() {
  if [ -z "${1}" ] || [ -z "${2}" ]; then
    exit
  fi
  local fn=$1
  local str=$2
  #echo ${fn} ${str}
  local ln=$(grep -n "${str}" ${fn} | cut -d : -f 1)
  echo ${ln}
}

gln=$(grep2linenum /etc/passwd nobody)

echo line number is ${gln}
