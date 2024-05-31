#/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started execting at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ...... $R FAILED $N"
    else
        echo -e "$2 ...... $G SUCCESS $N"
    fi
}


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR :: Please run this script with root access $N"
    exit 1
else
    echo "you are root user"
fi

#echo "All Arguments passed : $@"

for package in $@

do 
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "INSTALLATION OF $package"
    else
        echo -e "$package is already installed ... $Y SKKIPPING $N"
    fi
done

        