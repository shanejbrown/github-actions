#!/bin/sh
set -e -x

os=linux
arch=arm64

IMAGE_NAME=shanejbrown/github-actions

docker build -t ${IMAGE_NAME} .
