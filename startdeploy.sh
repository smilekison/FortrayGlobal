#!/bin/bash

# Ensure the script stops on first error
set -e

# Variables
NAMESPACE="default" # Change this to your desired namespace
DEPLOYMENT_FILE="deploymentfile.yaml"
SERVICE_FILE="servicefile.yaml"

# Apply the Kubernetes manifests
echo "Deploying to Kubernetes..."

kubectl apply -f $DEPLOYMENT_FILE -n $NAMESPACE
kubectl apply -f $SERVICE_FILE -n $NAMESPACE

# Check the deployment status
kubectl rollout status deployment/redis-deployment -n $NAMESPACE
