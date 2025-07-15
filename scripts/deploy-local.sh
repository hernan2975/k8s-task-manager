
#!/bin/bash

echo "🚀 Desplegando con manifiestos YAML..."
kubectl apply -f k8s/

echo "🌐 Abriendo servicio web..."
minikube service web-service
