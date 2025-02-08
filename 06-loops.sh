#!/bin/bash

#all arguments are in $@(special var)
for i in $@
do
    echo "yum install $i -y"
done    