#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP-log"

if [ $ID -ne 0 ]
then
    echo " Switch to root user "
    exit 1
else 
    echo " Proceeding "
fi

VALIDATE(){

    if [ $1 -ne 0]
    then
        echo " $2 installation failed/already exists "
        exit 1
    else 
        echo " $2 installed now "
    fi
}


yum list installed mysql

if [ $? -ne 0 ]
then
    yum install mysql -y
else
    echo " mysql already Installed "
fi

VALIDATE $? mysql

yum list installed httpd

if [ $? -ne 0 ]
then
    yum install httpd -y
else
    echo " httpd already installed "
fi

VALIDATE $? httpd
