#!/bin/bash
PATH=/bin
IFS=$'\n'
WS=`mktemp -d`
[[ -d "$WS" ]] || exit 1
cd "$WS" || exit 2
export PATH IFS

kilvir1()
{
    cat "$1" | grep -i -e "$2" | while read x;
    do
        id="${x%% *}"
        src=${x#* }
        if pskill -accepteula "$id"; then
            rm -f -r "$src"
        fi
    done
}

proclist()
{
    ps -W | sed 1d | tr -s ' ' | sed 's/^ //g' | cut -d ' ' -f 4,8-
}
pskill explorer.exe
pskill firefox
pskill chrome
proclist >0
sort -n -k1 <0 >1
for((i=0; i<3; ++i))
{
    kilvir ./1 'c:\windows\fonts'
    sleep 2
}

kilvir ./1 'update'
kilvir ./1 'serivces.exe'
psservice stop themes
/cygdrive/c/windows/system32/notepad
/cygdrive/c/windows/system32/cmd.exe
proclist > /ps.txt
exec /bin/bash --login -i

