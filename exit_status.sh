
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ] ; then
    echo "you should have root privileges to run this script"
    exit 1
else
    echo "you are root user"
fi  
dnf install mysql -y
if [ $? -eq 0 ]; then
    echo "mysql installed successfully"
else
    echo "mysql installation failed"
    exit 1
fi

