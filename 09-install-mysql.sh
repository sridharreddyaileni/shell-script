#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this scripts with root access"
    exit 1 
else   
    echo "You are root user"
fi 

yum install myysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: mysql installation failed"
    exit 1
else
    echo "Mysql installation is success"
fi