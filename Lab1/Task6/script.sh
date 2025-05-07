#!/bin/bash

grep -Eow "[+]?[1-9][0-9]{1,14}" ./phone-numbers > ans && wc -w ans | awk '{print $1}'
