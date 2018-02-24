#!/bin/bash
testuser=will
#check passwd contains releated dir
if grep $testuser /etc/passwd
then
    echo "ok"
    ls -a /home/$testuser/
#if passwd don't contain any dir,check user exist
elif ls -d /home/$testuser/
then
    echo "user not exist"
else
    echo "user not exist"
fi
