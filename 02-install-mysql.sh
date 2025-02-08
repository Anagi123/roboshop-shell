#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
    echo "ERROR:: please run with root user"
    exit 1
fi

yum install mysqllll -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is error"
    exit 1
else
    echo "installation of mysql is success"   
fi     

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "installation of postfix is error"
    exit 1
else
    echo "installation of postfix in success"
fi        
