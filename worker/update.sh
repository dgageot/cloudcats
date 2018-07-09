#!/bin/bash
TAG=$(date +%s)
docker build -t gcr.io/gcp-early-access-sandbox/ccworker:$TAG .
docker push gcr.io/gcp-early-access-sandbox/ccworker:$TAG
kubectl set image deployment cloudcats-worker cloudcats-worker=gcr.io/gcp-early-access-sandbox/ccworker:$TAG
kubectl rollout status deployment cloudcats-worker
