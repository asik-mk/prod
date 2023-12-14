#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%y%m%d-%H%M%S)
LOGFILE="/tmp/$0.$TIMESTAMP.log"

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$package installation failed"
        exit 1
    else
        echo "$package successfully installed"
    fi

}

if [ $ID -ne 0 ]
then    
    echo "Switch to root user"
        exit 1
else
    echo "FOR loop begins"
fi

for package in $@
    do
        yum list installed $package
        if [ $? -ne 0 ]
        then 
            yum install $package -y
            VALIDATE $? "Installing the $package"
        else
            echo "Already installed"
    done