#!/bin/bash

ID=(id -u)
yum install mysql -y

 if [ $? -ne 0 ]
 then 
        echo "switch to root user by running 'sudo su -' "
            exit 1
 else

     echo "Successfully installed mysql"

 fi


