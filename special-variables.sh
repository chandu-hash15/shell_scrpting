#!/bin/bash
echo "many variables are special variables:$@"
echo "this is the user id of the current user :$UID"
echo "PID  of this script is :$$"
sleep 10 &
echo "PID of the last background process is :$!" # this is useful to check if the background process is running or not