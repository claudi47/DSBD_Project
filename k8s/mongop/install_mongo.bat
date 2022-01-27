@echo off
kubectl create namespace dsbd
kubectl config set-context --current --namespace dsbd

kubectl apply -f "%~dp0crd\mongodbcommunity.mongodb.com_mongodbcommunity.yaml"
kubectl get crd/mongodbcommunity.mongodbcommunity.mongodb.com

kubectl apply -k "%~dp0rbac\"
kubectl get role mongodb-kubernetes-operator
kubectl get rolebinding mongodb-kubernetes-operator
kubectl get serviceaccount mongodb-kubernetes-operator

kubectl create -f "%~dp0manager.yaml" --namespace mongodb
pause