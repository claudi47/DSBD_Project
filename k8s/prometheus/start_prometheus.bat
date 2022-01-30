@echo off
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
kubectl create namespace monitoring
helm install my-kube-prometheus-stack prometheus-community/kube-prometheus-stack -f "%~dp0override.yaml" --version 30.2.0 --namespace monitoring
pause