#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell_script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p LOGS_FOLDER

echo " script execution started at : $(date)"

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ];then
    echo "you are not a root user"
    exit 1
else
    echo "you are root user"
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo -e" insatallation  $2----$R failed $N"
        exit 1
    else
        echo " $2 nstal;ation $2----$G sucessful $N"
    fi
}   

dnf list installed mysql &>> $LOG_FILE
if [ $! -ne 0 ]; then
   dnf install mysql -y &>> $LOG_FILE
   validate $? "mysql"
else
   echo "mysql is already installed $Y SKIPPING $N"
fi


dnf list installed nginx &>> $LOG_FILE
if [ $! -ne 0 ]; then
   dnf install nginx &>> $LOG_FILE
   validate $? "nginx"
else
   echo "nginx  is already installed $Y SKIPPING $N"
fi

dnf list installed python3 &>> $LOG_FILE
if [ $! -ne 0 ]; then
   dnf install python3 -y  &>> $LOG_FILE
   validate $? "python"
else
   echo "python is already installed $Y SKIPPING $N"
fi