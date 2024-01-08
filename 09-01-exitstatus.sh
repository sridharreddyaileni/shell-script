#!/bin/bash

ID=$(id -u)

X=$(echo $?)

VALIDATE(){
if [ $X -ne 0 ]
then
    echo "ERROR:: Installation of git failed"
    exit 1
else
    echo "Instllation git is success"
fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this scripts with root access"
    exit 1
else   
    echo "You are root user"
fi 

yum install ngixyy -y

VALIDATE

#if [ $? ne 0 ]
