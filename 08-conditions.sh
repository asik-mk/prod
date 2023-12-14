#!/bin/bash

ID=(id -u)
 if [ $ID -ne 0 ]
 then 
        echo "switch to root user by running 'sudo su -' "
            exit 1
 else

     echo "Successfully installed mysql"

yum install mysql -y

 if [ $? -ne 0 ]
 then 
        echo "switch to root user by running 'sudo su -' "
            exit 1
 else

     echo "Successfully installed mysql"

 fi

yum install git -y

 if [ $? -ne 0 ]
 then 
    echo " swtich to root user by running sudo su - "
    exit 1
 else 
    echo "successfully installed git"
 fi   
  

