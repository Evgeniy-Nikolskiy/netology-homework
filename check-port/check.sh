#!/usr/bin/bash

count=0
count1=0
count2=0

while [ $count -lt 5 ] && ((1==1))
do
nc -vzw 2 192.168.0.1 80 
 if (($? != 1))
  then
  echo "192.168.0.1 success" >> check.log
  else
  echo "192.168.0.1 not connect" >> check.err
 fi
(( count++ ))
done

while [ $count1 -lt 5 ] && ((1==1))
do
nc -vzw 2 173.194.222.113 90 
 if (($? != 1))
  then
  echo "173.194.222.113 success" >> check.log
  else
  echo "173.194.222.113 not connect" >> check.err
 fi
(( count1++ ))
done

while [ $count2 -lt 5 ] && ((1==1))
do
nc -vzw 2 87.250.250.242 80 
 if (($? != 1))
  then
  echo " 87.250.250.242 success" >> check.log
  else
  echo "87.250.250.242 not connect" >> check.err
 fi
(( count2++ ))
done

