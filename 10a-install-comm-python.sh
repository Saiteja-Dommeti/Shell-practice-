#!/bin/bash

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
#installing PYTHON

dnf list installed python3

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

