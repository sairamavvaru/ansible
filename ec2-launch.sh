#!/bin/bash
#1. Create an instance
#2. Take that Instance IP & register in DNS


TEMP_ID="lt-0433da4e92eb56542"
VER_ID=1

aws ec2 run-instances --linch-template LunchTemplateId=${TEMP_ID},Verstion=${VAR_VER}

