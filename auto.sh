#!/bin/bash
IFS=$'\n'
test -d /boot/log || mkdir -d /boot/log
cd /boot/log || exit 1
ps -W | sed 1d | tr -s ' ' | sed 's/^ //g' | cut -d ' ' -f 4,8- > /boot/log/ps.txt
if test -s '/boot/log/virkill.txt'; then
    ps -W | sed 1d | tr -s ' ' | sed 's/^ //g' | cut -d ' ' -f 4,8- 
fi
