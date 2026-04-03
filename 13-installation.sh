#!/bin/bash
#install mysql, nginx, python

user_id=$(id -u)

if [ $user_id -ne 0 ];
then
    echo "logged failed"
    exit 1
else
    echo "logged successfully"
fi
dnf install mysql-server -y
if [ $? -eq 0 ];
then
    echo "installed successfully"
else
    echo "installed failed"
fi
