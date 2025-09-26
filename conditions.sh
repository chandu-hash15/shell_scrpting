#!/bin/bash

var1=$1
if [ $var1 -gt 10 ];then
    echo "$var1 is greater than 10"
elif [ $var1 -eq 10 ];then
    echo "$var1 is equal to 10"
else
    echo "$var1 is less than or equal to 10"
fi
