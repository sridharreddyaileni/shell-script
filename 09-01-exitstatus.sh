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

if [ $? -ne 0 ]
then
    echo "ERROR:: Installation of mysql failed"
    exit 1
else
    echo "Instllation mysql is success"
fi 

yum install gity -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installation of git failed"
    exit 1
else
    echo "Instllation git is success"
fi 

