@echo off
kubectl create namespace mongodb
kubectl config set-context --current --namespace mongodb

kubectl apply -f crd/mongodbcommunity.mongodb.com_mongodbcommunity.yaml
kubectl get crd/mongodbcommunity.mongodbcommunity.mongodb.com

kubectl apply -k rbac/ --namespace mongodb
kubectl get role mongodb-kubernetes-operator --namespace mongodb
kubectl get rolebinding mongodb-kubernetes-operator --namespace mongodb
kubectl get serviceaccount mongodb-kubernetes-operator --namespace mongodb

kubectl create -f manager.yaml --namespace mongodb
pause