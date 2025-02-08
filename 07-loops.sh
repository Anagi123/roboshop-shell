#!/bin/bash

USERID=$(id -u)
R="\e[31m"   
G="\e[32m"       
N="\e[0m"
Y="\e[33m"
if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: please run with root access $N"
    exit 1
fi   

for i in $@
do
    yum installed $i 
    if [ $? -ne 0 ]
    then
        echo "$i is not installed,lets install it"
        yum install $i -y
    else
        echo -e "$Y $i installed $N"

done            

