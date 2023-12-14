#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%h-%m-%s)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR$N:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo -e "You are $G root $N user"
fi # fi means reverse of if, indicating condition end 

VALIDATE()
    {

    if [ $1 -ne 0 ]
    then 
            echo "installation of $2 $G failed $N"
                exit 1
    else

        echo "Successfully $G installed $2 $N"

    fi

}

yum install mysql -y &>> $LOGFILE

VALIDATE $? mysql 

yum install git -y &>> $LOGFILE

VALIDATE $? git
