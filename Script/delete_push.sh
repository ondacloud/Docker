#!/bin/bash
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
REGION_CODE="<REGION_CODE>"
ECR_NAME="<ECR_NAME>"
IMAGE_TAG="latest"

docker rm -f $(docker ps -aq) 2> /dev/null
docker rmi -f $(docker images -aq) 2> /dev/null

aws ecr get-login-password --region $REGION_CODE | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com
docker build -t $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$ECR_NAME:$IMAGE_TAG .
docker push $ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$ECR_NAME:$IMAGE_TAG