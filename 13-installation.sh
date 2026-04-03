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
echo "check user"
check_user=$(id -u)
if [ $check_user -eq 0 ];
then
    echo "logged in sudo user"
else
    echo "it's doesnt have access, login sudo user"
fi
dnf install nginx -y
download=$?
if [ $download -eq 0 ];
then
    echo "nginx successfully installed"
else
    echo "nginx download failed"
fi
