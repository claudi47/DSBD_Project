@echo off
kubectl config set-context --current --namespace confluent

kubectl delete -f topics.yaml
kubectl delete -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/confluent-platform.yaml
helm uninstall confluent-operator
pause
