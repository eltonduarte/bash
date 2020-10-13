#!/bin/bash

for i in {1..5};do
 ping -c1 "$1.$i" | grep "icmp_seq=1" | awk -F " " '{print $4}' | sed 's/.$//' 
done
