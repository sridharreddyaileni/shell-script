#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR::Please run this script with root access $N"
else
    echo -e "$G You are root user"
fi
