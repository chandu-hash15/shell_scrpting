#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


LOG_FOLDER="/var/log/shell_script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log" #/var/log/shell_script/loops.log

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ];then
    echo " you ate not a root user "
    exit 1
else
    echo " you are root user "
fi
valiidate() {
    if [ $? -ne 0 ]; then
        echo -e " $2 installation failed $R installation failed $N" 
       exit 1
    else
        echo -e " installaltion $2 ----$G successfull $N"
    fi
}

mkdir -p $LOG_FOLDER

for $tools in $@;
do
    dnf list installed $tools &>>$LOG_FILE
    if [ $? ne 0 ]; then
        dnf install $tools -y &>>$LOG_FILE
        validate $? $tools
    else
        echo -e "$tools already installed $Y SHIPPING $N"
    fi
done