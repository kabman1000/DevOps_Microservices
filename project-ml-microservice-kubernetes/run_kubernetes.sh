#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kabman1000/ml-task:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-task --image=kabman1000/ml-task:latest --port=8000


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-task-598bb88957-nmsv9 --address 0.0.0.0 8000:80

