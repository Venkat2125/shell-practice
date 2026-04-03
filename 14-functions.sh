#!/bin/bash
user_id=$(id -u)
install_server() {
    if [ $user_id -eq 0 ];
    then
        echo "sudo logged in"
    else
        echo "failed try to login into sudo"
        exit 1
    fi
}

laststatus() {
    last_status=$?
    if [ $last_status -ne 0 ];
    then
        echo "installinf failed"
    else
        echo "installing successfully"
    fi
}
install_server
dnf install mysql-server -y
laststatus



