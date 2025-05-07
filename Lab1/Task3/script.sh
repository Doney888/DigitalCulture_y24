#!/bin/bash

a=0

for i in $(cat ./fin); do
	cat $i >> fin_ans
done
echo "$a"
