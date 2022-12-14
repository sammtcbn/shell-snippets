#!/bin/bash
# refer to https://stackoverflow.com/questions/2497215/how-to-extract-domain-name-from-url

function show()
{
    fullurl=$1
    proto="$(echo $fullurl | grep :// | sed -e's,^\(.*://\).*,\1,g')"
    url=$(echo $1 | sed -e s,$proto,,g)
    userpass="$(echo $url | grep @ | cut -d@ -f1)"
    doname=$(echo $fullurl | sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/")
    port=$(echo $fullurl | sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\)\(:\([0-9]\{1,5\}\)\)\?.*/\4/")
    echo "fullurl  - $fullurl"
    echo "url      - $url"
    echo "userpass - $userpass"
    echo "proto    - $proto"
    echo "doname   - $doname"
    echo "port     - $port"
    echo
}

URI1="http://user:pw@example.com:80/"
URI2="https://example.com/aaa/bbb.git"
URI3="https://abc@example.com/ccc"
URI4="http://john:!#*@example.com:22/ccc"

show $URI1
show $URI2
show $URI3
show $URI4
