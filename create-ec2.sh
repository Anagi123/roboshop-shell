#!/bin/bash
# Arrays(list of name)

NAMES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "web")
INSTANCE_TYPE=""
IMAGE_ID=ami-0b4f379183e5706b9
SECURITY_GROUP_ID=sg-0a10b010ea41f91dd
# for loop
# if component is mysql or mongodb then instance_type should be t3.medium,for all others it is t2.micro
for i in "${NAMES[@]}"
do 
    if [ [ $i == "mongodb" || $i == "mysql" ] ];
    then
        INSTANCE_TYPE="t3.medium"
    else
        INSTANCE_TYPE="t2.micro"
    fi        
    echo "creating $i instance"
    aws ec2 run-instances --image-id $IMAGE_ID --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]"
done

