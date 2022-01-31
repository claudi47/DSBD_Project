@echo off
kubectl config set-context --current --namespace confluent


kubectl delete -f "%~dp0confluent-platform.yaml"
pause
