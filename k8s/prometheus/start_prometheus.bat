@echo off
helm install my-kube-prometheus-stack prometheus-community/kube-prometheus-stack -f override.yaml --version 30.2.0 --namespace monitoring
pause