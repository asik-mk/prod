#!/bin/bash
ID=$(id -u)

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



yum install mysql1 -y 

VALIDATE $? mysql

yum install gitt -y 

VALIDATE $? git

    