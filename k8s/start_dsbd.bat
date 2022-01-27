@echo off
kubectl apply -k .\config
call .\confluent\confluentop.bat
call .\confluent\uninstall_confluent_crd.bat
call .\mongop\install_mongo.bat
kubectl apply -k .\mongo-dsbd
kubectl apply -f .\bot\deployment.yaml
kubectl apply -f .\bet-data-service\deployment.yaml
kubectl apply -f .\user-service\deployment.yaml
kubectl apply -f .\csv-gen\deployment.yaml
pause