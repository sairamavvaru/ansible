#!/bin/bash
#1. Create an instance
#2. Take that Instance IP & register in DNS


TEMP_ID="lt-0433da4e92eb56542"
TEMP_VER=2

## Check if instance is already there

aws ec2 run-instances --launch-template LaunchTemplateId=${TEMP_ID},Version=${TEMP_VER} --tag-specifications "ResourceType=spot-instances-request,Tags=[{key=Name,Value=frontend}]" "ResourceType=instance,Tages={[Key=Name,Value=frontend}]" | jq

