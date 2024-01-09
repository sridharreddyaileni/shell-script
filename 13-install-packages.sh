#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started and executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2... $R FAILED $N"
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR::Please run this script with root access $N"
else
    echo -e "$G You are root user"
fi

for package in $@
do
    yum list installed $package 
    if [ $? -ne 0 ]
    then
        yum install $package -y 
        VALIDATE $? "Installation of $package"
    else
        echo -e "$G $package is already installed....$N $Y Skipping $N"
done


