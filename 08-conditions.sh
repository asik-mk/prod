#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end 

VALIDATE()
    {

    if [ $1 -ne 0 ]
    then 
            echo "installation of $2 failed"
                exit 1
    else

        echo "Successfully installed $2"

    fi

}

yum install mysql -y

VALIDATE $? mysql

yum install git -y

VALIDATE $? git
