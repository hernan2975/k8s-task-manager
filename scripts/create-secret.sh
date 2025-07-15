#!/bin/bash

SECRET_NAME=db-secret
DB_URL="postgresql://user:password@postgres-service:5432/tasks_db"

echo "🔐 Creando secreto '$SECRET_NAME' con URL: $DB_URL"

kubectl create secret generic $SECRET_NAME \
  --from-literal=url=$DB_URL

echo "✅ Secreto creado"

