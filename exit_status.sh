
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ] ; then
    echo "you should have root privileges to run this script"
    exit 1
else
    echo "you are root user"
fi  
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "mysql installed failed"
    exit 1
else  
    echo "mysql installation successful"
fi

dnf install python3 -y
if [ $? -eq 0 ]; then
    echo "python3 installation successful"  # here we are repeatting the same code which is not a good practice so we can use functions to avoid code repetition
else  
    echo "python3 installed failed"
    exit 1
fi

