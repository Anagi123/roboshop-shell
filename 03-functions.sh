#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)

R="\e[31m"   
G="\e[33m"       
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo -e "$2 ......$R Failure $N"
    exit 1
else
    echo -e "$2 ......$G success $N"   
fi    

}


yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing POSTFIX"
