#!/bin/bash
a=2
b=2
if [ $a -gt $b ]
then
  echo "$a greater than $b"
elif [ $a -lt $b ] 
then
  echo "$a smaller than $b"
elif [ $a -eq $b ]
then
  echo "$a equal $b"
elif [ $a -ne $b ]
then
  echo 0$a not equal $b""
fi
