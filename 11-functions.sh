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

dnf list installed mysql
 if [ $? -ne 0 ]
 then 
   echo "Mysql is not installed ... going to install it "
   dnf install mysql -y
   VALIDATE $? "MYSQL"
 else 
   echo "MYSQL is already installed ... nothing to do " 
 fi 

dnf list installed python3  
if [ $? -ne 0 ] 
 then 
     echo "python3 is not installed ... going to install it " 
     dnf install python3 -y
     VALIDATE $? "python3"
else 
     echo "python is already installed... nothing to do"
fi

dnf list installed nginx 
if [ $? -ne 0 ]
then 
    echo "NGINX is not installed... go to install it"
    dnf install nginx -y 
    VALIDATE $? "nginx"
else 
     echo "NGINX is already installed .... NOTHING TO DO "
fi     