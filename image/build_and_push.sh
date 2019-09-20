#!/bin/sh

set -e
cd $(dirname $0)

export IMAGE_NAME=cr.yandex/crpnr7n530cvru3edimp/postfix-relay-host

docker build -t ${IMAGE_NAME} . -f Dockerfile
docker push ${IMAGE_NAME}
