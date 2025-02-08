#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "installation ...... Failure"
    exit 1
else
    echo "installation ......success"   
fi    

}


yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?
