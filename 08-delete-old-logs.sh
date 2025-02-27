#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs

DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

# echo "$FILES_TO_DELETE"
echo "script started executing at $DATE" &>>$LOGFILE
    rm -rf $line

while read line
do
    echo "delete $line" &>>$LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE