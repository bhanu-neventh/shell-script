#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR :: PLEASE RN THIS SCRIPT WITH ROOT ACCESS"
else
    echo "YOU ARE ROOT USER"
fi
    yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing MySQL is FAILED"
else
    echo "Installing MySQL is SUCCESS"
fi
    yum install git -y
if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing GIT is FAILED"
else
    echo "Installing GIT is SUCCESS"
fi