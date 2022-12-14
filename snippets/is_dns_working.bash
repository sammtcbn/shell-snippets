#!/bin/bash
function is_dns_working ()
{
    if ping -q -c 1 -W 1 google.com >/dev/null; then
        return 0
    else
        return 1
    fi
}

if is_dns_working ; then
    echo "DNS is working"
else
    echo "DNS is not working"
fi
