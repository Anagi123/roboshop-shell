#!/bin/bash

USERID=$(id -u)
R="\e[31m"   
G="\e[32m"       
N="\e[0m"

if [ $i -ne 0 ];
then
    echo "$RERROR::please run with root access $N"
    exit
fi        