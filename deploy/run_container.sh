#!/binbash

echo "Running website, please provide the image & tag for it"

if [ $# -lt 2 ]; then
  echo "Not enough args, exiting"
  exit 1
fi

###
# Run the docker image
###

NAME=$1
TAG=$2

echo "Running application on network bridge1 & port 9092 to 9092"

docker run -d --network bridge1 -p 9092:9092 --name $NAME $NAME:$TAG
