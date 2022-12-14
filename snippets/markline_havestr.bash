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

function markline_havestr() {
  if [ -z "${1}" ] || [ -z "${2}" ]; then
    exit
  fi
  local fn=$1
  local str=$2
  #echo fn=${fn}
  #echo str=${str}
  local ln=$(grep2linenum ${fn} "${str}")
  #echo line number is ${ln}
  comment_line_num ${fn} ${ln}
}

markline_havestr markline_havestr.txt "44"
markline_havestr markline_havestr.txt "77"
