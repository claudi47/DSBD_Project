@echo off
kubectl config set-context --current --namespace dsbd
kubectl delete -f manager.yaml
kubectl delete -k rbac/
kubectl delete -f crd/mongodbcommunity.mongodb.com_mongodbcommunity.yaml
pause