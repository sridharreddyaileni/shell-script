#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2....\e[31m failed \e[0m"
        exit 1
    else
        echo -e "$2....\e[32m success \e[0m" #colour code given for green and normal colour
    fi
}

if [ $ID -ne 0 ]  
then
    echo -e "\e[31m ERROR:: Please run this script with root access"  #colour code given for red  colour
    exit 1
else
    echo "you are root user"
fi

yum install mysqll -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install gitt -y &>> $LOGFILE

VALIDATE $? "installing git"