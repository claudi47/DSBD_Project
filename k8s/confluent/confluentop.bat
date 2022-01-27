@echo off
helm repo add confluentinc https://packages.confluent.io/helm
helm repo update

kubectl create namespace confluent
kubectl config set-context --current --namespace confluent

helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes
kubectl apply -f "%~dp0confluent-platform.yaml"
kubectl apply -f "%~dp0topics.yaml"
pause