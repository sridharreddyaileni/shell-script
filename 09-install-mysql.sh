#!/bin/bash

ID=$(id -u)

if [$ID -ne 0 ]
then
    echo "ERROR:: Please run this scripts with root access"
else   
    echo "You are root user"
fi 
