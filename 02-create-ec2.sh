#!/bin/bash

NAMES=( "mongodb" "redis" "mysql" "rabbitmq" "catalogue" "cart" "user" "shipping" "payment" "dispatch" "web" )
INSTANCE_TYPE=""
IMAGE_ID=ami-03265a0778a880afb
SECURITY_GROUP_ID=sg-0b5180e3e68542b21

# if mysql or mongodb instance_type should be t3.medium , for all others it is t2.micro

for i in "${NAMES[@]}"
do
  if [[ $i == "mongodb" || $i == "mysql" ]]
  then 
      INSTANCE_TYPE="t3.medium"
  else
      INSTANCE_TYPE="t2.micro"
  fi
    echo "creating $i instance"
    aws ec2 run-instances --image-id $IMAGE_ID  --instance-type $INSTANCE_TYPE --security-group-ids  $SECURITY_GROUP_ID --tag-specifications "ResourceType=instance, Tags=[{Key=name,Value=$i}]"
done
