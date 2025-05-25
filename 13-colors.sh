#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR:: please run this script with root access $N"
    exit 1 #give other than 0 to 127
else
     echo "your are running with root access"
fi       