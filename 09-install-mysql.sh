#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? ne 0 ]
    then 
        echo "Installation is Failed"
        exit 1
    else
        echo "Installation is Success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this scripts with root access"
    
else   
    echo "You are root user"
fi 

yum install mysqll -y

VALIDATE

yum install git -y

VALIDATE

