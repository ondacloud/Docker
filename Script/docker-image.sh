#!/bin/bash
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
REGION_CODE="<REGION_CODE>"
ECR_NAME="<ECR_NAME>"
IMAGE_TAG="latest"
# IMAGE_TAG=$(date -d "+9 hours" "+%Y-%m-%d.%H.%M.%S")
ECR_URI="$ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$ECR_NAME"

docker rm -f $(docker ps -aq) 2> /dev/null
docker rmi -f $(docker images -aq) 2> /dev/null

aws ecr get-login-password --region $REGION_CODE | docker login --username AWS --password-stdin $ECR_URI
docker build -t $ECR_URI:$IMAGE_TAG .
docker push $ECR_URI:$IMAGE_TAG