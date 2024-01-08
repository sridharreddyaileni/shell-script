#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $X=10]
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
    exit 1
else   
    echo "You are root user"
fi 

#yum install mysql -y

X=10

VALIDATE

#yum install nginx -y





