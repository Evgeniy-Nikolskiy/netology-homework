#!/bin/bash


ipport=("192.168.0.1" "173.194.222.113" "87.250.250.242" "127.0.0.1")
now=$(date +%Y-%m-%d-%H-%M)

while ((1==1)); do
for a in ${ipport[@]}; do
 nc -vzw 2 $a 80
if (($? != 1))
  then
 echo $now $a connect success! >> check.log
  else
 echo $now $a not connect! >> check.err
 exit
fi
done
done
