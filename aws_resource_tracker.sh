#!/bin/bash
##########################
# Author : Shalinderjeet Singh
# Version : 1.0
# Title : AWS Resource tracker Script
###########################

set -x
set -e
set -o pipefail

echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print list of S3 Buckets"
aws s3 ls

echo "Print list of IAM-Users"

aws iam list-users

echo "Print List of Lambda functions"
aws lambda list-functions
