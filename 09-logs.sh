#!/bin/bash
ID=$(id -u)

VALIDATE()
    {
        if [ $1 -ne 0 ]
        then
            echo "Installation of $2 failed"
            exit 1
        else 
            echo "Installing $2"
        fi
    }

    if [ $ID -ne 0 ]
    then
        echo "Switch to root user"
        exit 1
    else 
        echo "Loading the dock..."
    fi

yum install mysql -y

VALIDATE $? mysql

yum install git -y 

VALIDATE $? git

yum install httpd -y 

VALIDATE $? httpd
 