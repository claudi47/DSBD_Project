@echo off
kubectl config set-context --current --namespace confluent
helm uninstall confluent-operator
kubectl delete -f "%~dp0storage-class.yaml"
pause