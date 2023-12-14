#!/bin/bash

ID=(id -u)

VALIDATE()
    {
        if [ $1 -ne 0 ]
        then
        
            echo "switch to root user by running 'sudo su -' "
            exit 1
        else

            echo "Successfully installed mysql"

        fi

    }

yum install mysql -y

VALIDATE $? "Installing"