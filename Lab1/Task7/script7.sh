#!/bin/bash

#for i in $(cat wget-pdfs)
#do
#    wget $i
#done

let ans=0

for i in $(ls)
do  
    if [[ "$(file -N $i)" == *PDF* ]];
    then
        
        prom=$(wc -c $i | awk '{print $1}')

        let ans=$ans+$prom
    fi
done

echo $ans
