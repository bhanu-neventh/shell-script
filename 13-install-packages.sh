#/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR :: Please run this script with root access $N"
    exit 1
else
    echo "you are root user"
fi

echo "All Arguments passed : $@"



