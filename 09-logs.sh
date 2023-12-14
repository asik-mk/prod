#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]7
    then
        echo -e "Installation of $2 $R failed $N"
        exit 1
    else
        echo -e "Successfully installed $G $2 $N"
    fi
}
    if [ $ID -ne 0 ]
    then
        echo -e "Switch to $G root $N user"
        exit 1
    else
        echo -e "$R fasten $Y the $G belt $N"
    fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? mysql

yum install git -y &>> $LOGFILE

VALIDATE $? git

    