#!/bin/bash
set -e -o pipefail

echo "waiting for ACK to be ready. may take a few minutes"
kubectl wait --for=jsonpath=.status.health.status=Healthy -n argocd application/ack --timeout=600s
