@echo off
kubectl config set-context --current --namespace mongodb
kubectl delete -f manager.yaml --namespace mongodb
kubectl delete -k rbac/ --namespace mongodb
kubectl delete -f crd/mongodbcommunity.mongodb.com_mongodbcommunity.yaml
pause