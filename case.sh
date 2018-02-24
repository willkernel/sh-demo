#!/bin/bash
testuser=rose
case $testuser in
rose)
   echo "hi,$testuser";;
rick)
   echo "hello,ricky";;
*)
   echo "defaults";;
esac
