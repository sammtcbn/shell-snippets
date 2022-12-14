#!/bin/bash
function comment_line_num() {
  if [ -z "${1}" ] || [ -z "${2}" ]; then
    exit
  fi
  local fn=$1
  local ln=$2
  #echo ${fn} ${ln}
  sed -i "${ln} s/^/#/" ${fn}
}

comment_line_num testfile.txt 4
