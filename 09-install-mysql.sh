#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this scripts with root access"
    exit 1 
else   
    echo "You are root user"
fi 

yum install mysql -y
