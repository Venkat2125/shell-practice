#!/bin/bash
userid=$(id -u)
#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

logs_folder="/var/log/shell-script"
script_name=$( echo $0 | cut -d "." -f1 )
log_file="$logs_folder/$script_name.log"  # /var/log/shell-script/

mkdir -p $logs_folder
echo "script started executed at" $(date)"

if [ $userid -ne 0 ]; then
    echo "ERROR:: please run this script with root privelege"
    exit 1 #failure is other than o
fi
validate(){
    if [ $1 -ne 0 ]; then
        echo -e "installing $2 ... $R failure $N" 
        exit 1
    else
        echo -e  "installing $2 ... $R failure $N"
    fi
}

#loops
for package in $@
do
 #check package installed or not
    dnf list installed $package &>>$log_file
    if [ $? -n 0 ]; then
        dnf install $package -y &>>$logfile
        validate $? "package"
    else
        echo "failed"
    fi
