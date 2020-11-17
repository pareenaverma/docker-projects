docker context create remote --docker "host=ssh://ubuntu@3.83.150.252"
docker context use remote

export DOCKER_BUILDKIT=1
docker buildx create --name awsbuilder --use remote --platform linux/arm64, linux/arm/v7
docker buildx use awsbuilder
docker buildx build --platform linux/arm64,linux/arm/v7 -t pareenaverma/c-hello-world-a1 --push .


