#!/bin/bash
TAG=$(date +%s)
docker build -t gcr.io/gcp-early-access-sandbox/ccweb:$TAG .
docker push gcr.io/gcp-early-access-sandbox/ccweb:$TAG
kubectl set image deployment cloudcats-web cloudcats-web=gcr.io/gcp-early-access-sandbox/ccweb:$TAG
kubectl rollout status deployment cloudcats-web
