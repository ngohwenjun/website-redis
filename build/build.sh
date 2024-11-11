#!/bin/bash

echo "Expecting args for name & tag of the container to be built"

if [ $# -lt 2 ]; then
  echo "Not enough args supplied, exiting"
  exit 1
fi

###
# Setup container name
###

NAME=$1
TAG=$2

###
# Move to src fldr
###

cd ../src

docker build -t $NAME:$TAG .
