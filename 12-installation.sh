#!/bin/bash

# check if user has root access or not
user_id=$(id -u)  #id -u will check root access

if [ $user_id -ne 0 ];
then
    echo " user has doesn't root access,please use root user"
    exit 1
else
    echo "sudo user logged in"

fi
dnf install mysql-server -y

#how to we know its success or failed? use $? it will tells last command status
if [ $? -eq 0 ];
then
    echo "installed successfully"
    exit 1
else
    echo "failed check logs"
fi

#install mysql
