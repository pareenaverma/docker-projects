docker context create remote --docker "host=ssh://ubuntu@3.83.150.252"
docker context use remote

./build.sh

