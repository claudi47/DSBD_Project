@echo off
kubectl config set-context --current --namespace confluent

kubectl delete -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/confluent-platform.yaml
helm uninstall confluent-operator
kubectl delete crd/clusterlinks.platform.confluent.io crd/confluentrolebindings.platform.confluent.io crd/connectors.platform.confluent.io crd/connects.platform.confluent.io crd/controlcenters.platform.confluent.io crd/kafkarestclasses.platform.confluent.io crd/kafkarestproxies.platform.confluent.io crd/kafkas.platform.confluent.io crd/kafkatopics.platform.confluent.io crd/ksqldbs.platform.confluent.io crd/migrationjobs.platform.confluent.io crd/schemaregistries.platform.confluent.io crd/schemas.platform.confluent.io crd/zookeepers.platform.confluent.io
pause