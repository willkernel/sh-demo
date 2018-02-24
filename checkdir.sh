#!/bin/bash
mydir=/home/willkernel/Downloads/a
if [ -d $mydir ]
then
   echo "$mydir exist"
   cd $mydir
   ls
else
   echo "not exist"
fi
