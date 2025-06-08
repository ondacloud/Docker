#!/bin/bash
REGION_NAME="<REGION_NAME>"
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
REGION_CODE=$(aws configure set region $REGION_NAME && aws configure get region)
IMAGE_NAME=("<IMAGE_NAME>")
IMAGE_TAG
for name in "${IMAGE_NAME[@]}"
do
    aws ecr get-login-password --region $REGION_CODE | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com
    docker build -t $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$name:latest ./$name/
    docker push $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$name:latest
done