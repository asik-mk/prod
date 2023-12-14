#!/bin/bash
ID=$(id -u)
    if [ $ID -ne 0 ]
    then
        echo "Switch to root user"
        exit 1
    else
        echo "fasten the belt"
    fi


yum install mysql -y 

    if [ $? -ne 0 ]
    then
        echo "Installation of mysql failed"
        exit 1
    else
        echo "Successfully installed mysql"
    fi

yum install git -y 

    if [ $? -ne 0 ]
    then
        echo "Installation of git failed"
        exit 1
    else
        echo "Successfully installed git"
    fi