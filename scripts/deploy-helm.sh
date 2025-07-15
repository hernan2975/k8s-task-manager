
#!/bin/bash

RELEASE_NAME=k8s-task-manager
CHART_PATH=./helm-chart/k8s-task-manager

echo "🚀 Desplegando Helm chart: $RELEASE_NAME"
helm upgrade --install $RELEASE_NAME $CHART_PATH

echo "✅ Despliegue Helm completado"
