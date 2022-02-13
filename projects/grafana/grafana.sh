#!/bin/sh
#docker run --name grafana -d -p 3000:3000 -v $PWD/data:/var/lib/grafana rancher/mirrored-grafana-grafana:7.4.5
docker run --name grafana -d -p 3000:3000 rancher/mirrored-grafana-grafana:7.4.5

