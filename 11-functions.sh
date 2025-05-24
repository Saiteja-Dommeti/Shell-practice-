#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR :: Please run this script with root acess"
    exit 1 #give other than 0 to 127
else 
     echo "your running with root access" 
 fi

#validate functions takes input as exit status , what command they tried to install 

VALIDATE() {
    if [ $1 -eq 0 ]
    then 
        echo "Installing $2 is ... SUCCESS"
    else 
        echo "installing $2 is ... FAILURE"
        exit 1
    fi        
}