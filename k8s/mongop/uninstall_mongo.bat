@echo off
kubectl config set-context --current --namespace dsbd
kubectl delete -f "%~dp0manager.yaml"
kubectl delete -k "%~dp0rbac\"
kubectl delete -f "%~dp0crd\mongodbcommunity.mongodb.com_mongodbcommunity.yaml"
pause