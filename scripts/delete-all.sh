#!/bin/bash

echo "🗑️ Eliminando recursos Kubernetes..."
kubectl delete -f k8s/

echo "✅ Eliminación completa."

