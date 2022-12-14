#!/bin/bash
# refer to https://gist.github.com/krohne/298c6393cf3dd6063b054dd297ba7714

function countdown() {
  secs=$1
  shift
  msg=$@
  while [ $secs -gt 0 ]
  do
    printf "\r\033[KWaiting %.d seconds $msg" $((secs--))
    sleep 1
  done
  echo
}

#countdown 10 "going ..."
countdown 10

echo done
