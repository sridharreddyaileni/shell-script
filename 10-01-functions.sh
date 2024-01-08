#!/bin/bash

#ID=$(id -u) #given command in if condition directly

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2....Installing is failed"
        exit 1
    else
        echo "$2....$3"
    fi
}

if  [$(id -u) -ne 0 ]  
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE $? "installing mysql" "Installing  mysql is success"

yum install git -y

VALIDATE $? "installing git" "Installing  git is success"