#!/bin/bash

[ -f /etc/timezone ] && echo /etc/timezone exist

timezone=
[ -f /etc/timezone ] && timezone=$(cat /etc/timezone)
echo timezone = ${timezone}
