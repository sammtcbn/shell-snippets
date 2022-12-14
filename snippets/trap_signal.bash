#!/bin/bash

LC_TIME=C

TMP_FILE=/tmp/MyApp

function clean_up ()
{
    rm -f ${TMP_FILE}
    echo exit
    exit    
}

trap clean_up SIGHUP SIGINT SIGTERM

while true; do
    date > ${TMP_FILE}
    df >> ${TMP_FILE}
done

echo bye
