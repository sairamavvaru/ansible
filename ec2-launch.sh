#!/bin/bash
#1. Create an instance
#2. Take that Instance IP & register in DNS

aws ec2 request-spot-instances --instance-count 1 --type "persistent" --launch-specification file://spot.json --tag-specification
 "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=frontend}]" | jq
