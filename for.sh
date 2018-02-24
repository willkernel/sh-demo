#!/bin/bash
for item in 1 2 3 45 6
do
   echo $item
done

list="win--linux--macOS"
IFS=$--
for item in $list
do
   echo $item
done

