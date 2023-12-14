#!/bin/bash
ID=$(id -u)

yum install mysql -y

    if [ $ID -ne 0 ]
    then
        echo "Switch to root user"
    else 
        echo "Installing mysql"
    fi

yum install git -y 

    if [ $ID -ne 0 ]
    then
        echo "Switch to root user"
    else 
        echo "Installing git"
    fi 