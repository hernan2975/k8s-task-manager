# 🧩 K8s Task Manager

Proyecto de microservicios desplegado en Kubernetes. Incluye frontend, backend, PostgreSQL, Redis y observabilidad con Prometheus y Grafana. Ideal como plantilla para proyectos reales en clústeres.

## 🚀 Características

- Orquestación con Kubernetes (compatible con Minikube/KinD)
- CI/CD con GitHub Actions
- Infraestructura como código con Helm
- Base de datos persistente (PostgreSQL)
- Cache y mensajería con Redis
- Observabilidad: métricas, logs y dashboard
- Escalabilidad y probes configurados

## 📂 Estructura
k8s-task-manager/
├── api/
├── web/
├── k8s/
├── helm-chart/
├── .github/workflows/
├── scripts/
└── README.md

## 🛠️ Despliegue local

```bash
make start-minikube
kubectl apply -f k8s/

📦 Requisitos
Docker

Kubernetes (Minikube o Kind)

Helm 3

kubectl

Python 3.10+ / Node.js (según stack elegido)

📄 Licencia
MIT

