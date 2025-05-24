#!/bin/bash

USERID=$(id -u )

if [ $USERID -ne 0 ]
then
  echo "ERROR::please run this script with root access"
else 
 echo "You running with root access"
fi 

dnf list installed mysql

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ... SUCCESS"
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1
    fi
else
    echo "MySQL is already installed...Nothing to do"
fi
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
#installing PYTHON
if [ $? -ne 0 ]
then 
  echo "python3 is not installed ... going to install it "
   dnf install python3 -y
   if [ $? -eq 0]
   then 
        echo "Installing Python3 is ... SUCCESS"
    else 
         echo "Installing Python is .... FAILURE"    
         exit 1
    fi
else 
    echo "Python is already installed .... nothing to do "
fi    