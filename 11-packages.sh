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

for package in $@
do
    yum list insatlled $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? $package
    else
        echo " $package already Installed "
    fi
done




