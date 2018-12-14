#!/usr/bin/env bash
set -x -e

buildnumber=${4-$(date -u +"%y%m%d%H%M")}

docker build  -t "$1"/node:4.4_"$buildnumber" 4.4.7
docker build  -t "$1"/node:4.5_"$buildnumber" 4.5.0
docker build  -t "$1"/node:4.8_"$buildnumber" 4.8.4
docker build -t "$1"/node:6.2_"$buildnumber" 6.2.2
docker build  -t "$1"/node:6.6_"$buildnumber" 6.6.0
docker build  -t "$1"/node:6.9_"$buildnumber" 6.9.3
docker build  -t "$1"/node:6.10_"$buildnumber" 6.10.3
docker build  -t "$1"/node:6.11_"$buildnumber" 6.11.5
docker build  -t "$1"/node:8.0_"$buildnumber" 8.0.0
docker build  -t "$1"/node:8.1_"$buildnumber" 8.1.4
docker build -t "$1"/node:8.2_"$buildnumber" 8.2.1
docker build  -t "$1"/node:8.8_"$buildnumber" 8.8.1
docker build  -t "$1"/node:8.9_"$buildnumber" 8.9.4
docker build  -t "$1"/node:8.11_"$buildnumber" 8.11.4
docker build -t "$1"/node:8.12_"$buildnumber" -t "$1"/node:lts_"$buildnumber" 8.12.0
docker tag "$1"/node:lts_"$buildnumber" "$1"/node:lts
docker build  -t "$1"/node:9.4_"$buildnumber" 9.4.0
docker build  -t "$1"/node:10.1_"$buildnumber" 10.1.0
docker build  -t "$1"/node:10.10_"$buildnumber" -t "$1"/node:latest_"$buildnumber" 10.10.0
docker tag "$1"/node:latest_"$buildnumber" "$1"/node:latest 

#docker login -u "$2" -p "$3"


#docker push "$1"/node:4.4_"$buildnumber"
#docker push "$1"/node:4.5.0_"$buildnumber"
#docker push "$1"/node:4.8.3_"$buildnumber"
#docker push "$1"/node:4.8.4_"$buildnumber"
#docker push "$1"/node:6.2.2_"$buildnumber"
#docker push "$1"/node:6.6.0_"$buildnumber"
#docker push "$1"/node:6.9.3_"$buildnumber"
#docker push "$1"/node:6.10.3_"$buildnumber"
#docker push "$1"/node:6.11.0_"$buildnumber"
#docker push "$1"/node:6.11.1_"$buildnumber"
#docker push "$1"/node:6.11.5_"$buildnumber"
#docker push "$1"/node:8.0.0_"$buildnumber"
#docker push "$1"/node:8.1.2_"$buildnumber"
#docker push "$1"/node:8.1.3_"$buildnumber"
#docker push "$1"/node:8.1.4_"$buildnumber"
#docker push "$1"/node:8.2.1_"$buildnumber"
#docker push "$1"/node:8.8.0_"$buildnumber"
#docker push "$1"/node:8.8.1_"$buildnumber"
#docker push "$1"/node:8.9.4_"$buildnumber"
#docker push "$1"/node:8.11.4_"$buildnumber"
#docker push "$1"/node:8.12.0_"$buildnumber"
#docker push "$1"/node:lts_"$buildnumber"
#docker push "$1"/node:lts
#docker push "$1"/node:9.4.0_"$buildnumber"
#docker push "$1"/node:10.1.0_"$buildnumber"
#docker push "$1"/node:10.10.0_"$buildnumber"
#docker push "$1"/node:latest_"$buildnumber"
#docker push "$1"/node:latest

#docker logout
