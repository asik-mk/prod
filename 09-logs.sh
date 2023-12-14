#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%h-%m-%s)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation of $2 failed"
        exit 1
    else
        echo "Successfully installed $2"
    fi
}

    if [ $ID -ne 0 ]
    then
        echo "Switch to root user"
        exit 1
    else
        echo "fasten the belt"
    fi



yum install mysql -y &>> $LOGFILE

VALIDATE $? mysql

yum install git -y &>> $LOGFILE

VALIDATE $? git

    