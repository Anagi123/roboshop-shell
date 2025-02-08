#!/bin/bash

#all arguments are in $@(special var)
for i in $@
do
    yum install $i -y
done    