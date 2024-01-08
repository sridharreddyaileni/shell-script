#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo -e "$G Hello $N"
echo -e "$R I'M  ANGRY ON  YOU $N"
echo -e "$Y just kidding $N" &>> $LOGFILE


