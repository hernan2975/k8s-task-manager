#!/bin/bash

echo "📦 Construyendo imagen API..."
docker build -t k8s-task-manager-api ./api

echo "📦 Construyendo imagen Web..."
docker build -t k8s-task-manager-web ./web

echo "✅ Imágenes construidas correctamente."
