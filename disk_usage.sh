#!/bin/bash

# Mandatory (color,validations and log redirections)

LOG_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOG_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"   
G="\e[32m"       
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')

