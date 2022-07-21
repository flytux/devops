#!/bin/sh

# trivy db 압축 풀기
# mkdir -p ~/.cache/trivy/db
# tar xvf trivy-offline.db.tgz -C ~/.cache/trivy/db

docker run -it \
	-v $HOME/.cache/trivy:/root/.cache/trivy \
	-v /var/run/docker.sock:/var/run/docker.sock \
	aquasec/trivy:0.18.3 -q --skip-update --severity HIGH,CRITICAL --format=json nginx | jq | less
