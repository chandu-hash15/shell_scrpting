#!/bin/bash


USER_ID=$(id -u)
if [ $USER_ID -ne 0 ];then
    echo "you are not a root user"
    exit 1
else
    echo "you are root user"
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo " $2 insatallation failed"
        exit 1
    else
        echo " $2 nstal;ation  sucessful"
    fi
}   

dnf list installed mysql
if [ $! -ne 0 ]; then
   dnf install mysql -y
   validate $? "mysql"
else
   echo "mysql is already installed"
fi


dnf list installed nginx
if [ $! -ne 0 ]; then
   dnf install nginx
   validate $? "nginx"
else
   echo "nginx  is already installed"
fi

dnf list installed python3
if [ $! -ne 0 ]; then
   dnf install python3 -y
   validate $? "python"
else
   echo "python is already installed"
fi