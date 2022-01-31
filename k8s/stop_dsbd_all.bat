@echo off
kubectl delete -f .\csv-gen\deployment.yaml
kubectl delete -f .\user-service\deployment.yaml
kubectl delete -f .\bet-data-service\deployment.yaml
kubectl delete -f .\bot\deployment.yaml
kubectl delete -k .\mongo-dsbd
call .\mongop\uninstall_mongo.bat
call .\confluent\uninstall_confluent.bat
call .\confluent\uninstall_confluent_op.bat
kubectl delete -k .\config
pause