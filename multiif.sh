#!/bin/bash
mydir=/home/willkernel/Downloads
if [ -d $mydir ] && [ -w $mydir ]
then
   cd $mydir
   touch test1
else
   echo "no"
fi
