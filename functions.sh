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
        echo " $2 nstallation failed"
        exit 1
    else
        echo " $2 nstal;ation  sucessful"
    fi
}   

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install mongodb-mongosh -y
validate $? "mongosh"

