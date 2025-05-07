#!/bin/bash 

cd ./proc

ans='ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ'

for i in $(ls);
do
    cd $i
    prom=$(cat $(ls) | tr '\0' '\n' | grep -aw 'TASK=*' | awk -F '=' '{print $2}')
    if [ ! -z "$prom" ];
    then
        if [ "$prom" \< "$ans" ];
        then
            ans=$prom
        fi
    fi
    cd ..
done

echo $ans

cd ..
