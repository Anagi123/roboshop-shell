#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 ...... Failure"
    exit 1
else
    echo "$2 ......success"   
fi    

}


yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing POSTFIX"
