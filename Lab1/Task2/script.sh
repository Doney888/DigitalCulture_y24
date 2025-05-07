#!/bin/bash

tar -xzf find-exe.tar.gz 
find ./ -perm 744 -type f -printf '%f\n'
