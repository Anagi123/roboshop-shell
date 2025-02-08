#!/bin/bash

USERID = $(id -u)

if[USERID -ne 0]
then
echo "ERROR: please run with root user"
exit 1
fi

