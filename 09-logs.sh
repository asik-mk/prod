#!/bin/bash

yum install mysql -y

    if[ $? -gt 0 ]
    then
        echo "Switch to root user"
    else 
        echo "Installing mysql"
    fi