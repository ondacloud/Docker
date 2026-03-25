### Setup Multi-Arch Image
```shell
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
REGION_CODE="ap-northeast-2"
ECR_NAME="demo-ecr"
ECR_URI="$ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com/$ECR_NAME"
IMAGE_TAG="v1.0.0"
```

```shell
docker run --privileged --rm tonistiigi/binfmt --install all
```

```shell
docker buildx create --name multi-builder --driver docker-container --use --bootstrap
```

```shell
aws ecr get-login-password --region $REGION_CODE | docker login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.$REGION_CODE.amazonaws.com"
```

```shell
docker buildx build --platform linux/amd64 -t $ECR_URI:$IMAGE_TAG-amd64 --load .
docker buildx build --platform linux/arm64 -t $ECR_URI:$IMAGE_TAG-arm64 --load .
```

```shell
docker push $ECR_URI:$IMAGE_TAG-amd64
docker push $ECR_URI:$IMAGE_TAG-arm64
```

```shell
docker manifest create $ECR_URI:$IMAGE_TAG $ECR_URI:$IMAGE_TAG-amd64 $ECR_URI:$IMAGE_TAG-arm64
```

```shell
docker manifest annotate $ECR_URI:$IMAGE_TAG $ECR_URI:$IMAGE_TAG-amd64 --os linux --arch amd64
docker manifest annotate $ECR_URI:$IMAGE_TAG $ECR_URI:$IMAGE_TAG-arm64 --os linux --arch arm64
```

```shell
docker manifest inspect $ECR_URI:$IMAGE_TAG
```

```shell
docker manifest push $ECR_URI:$IMAGE_TAG
```