#!/bin/bash

echo "📤 Cargando imagen API en Minikube..."
minikube image load k8s-task-manager-api

echo "📤 Cargando imagen Web en Minikube..."
minikube image load k8s-task-manager-web

echo "✅ Imágenes disponibles en Minikube."

