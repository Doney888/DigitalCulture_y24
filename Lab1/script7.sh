#!/bin/bash

for i in $(cat wget-pdfs)
do
    wget $i
done

ans = 0

for i in $(ls)
do
    if [file -N $i | grep "PDF document" != ""];
    then
        echo &(wc -c $i | awc '{print 1}')
    fi
done
