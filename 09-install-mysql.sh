#!/bin/bash

ID=$(id -u )

if [ $ID -ne 0 ]
then
    echo "ERROR :: PLEASE RN THIS SCRIPT WITH ROOT ACCESS"
else
    echo "YOU ARE ROOT USER"
fi
    yum install mysql -y