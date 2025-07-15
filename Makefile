# Variables
K8S_DIR=k8s
API_DEPLOY=api-deployment.yaml
API_SERVICE=api-service.yaml
NAMESPACE=default

.PHONY: help start-minikube stop-minikube status docker-build deploy delete logs port-forward helm-install

help:
	@echo "Comandos disponibles:"
	@echo "  make start-minikube      - Inicia Minikube"
	@echo "  make stop-minikube       - Detiene Minikube"
	@echo "  make status              - Muestra el estado del cluster"
	@echo "  make docker-build        - Construye imagen Docker de la API"
	@echo "  make deploy              - Aplica manifiestos Kubernetes"
	@echo "  make delete              - Elimina recursos Kubernetes"
	@echo "  make logs                - Muestra logs del backend"
	@echo "  make port-forward        - Abre puerto local a pod backend"
	@echo "  make helm-install        - Instala usando Helm Chart"

start-minikube:
	minikube start --driver=docker

stop-minikube:
	minikube stop

status:
	kubectl get pods -A

docker-build:
	docker build -t k8s-task-manager-api:latest ./api

deploy:
	kubectl apply -f $(K8S_DIR)/$(API_DEPLOY)
	kubectl apply -f $(K8S_DIR)/$(API_SERVICE)

delete:
	kubectl delete -f $(K8S_DIR)/$(API_DEPLOY)
	kubectl delete -f $(K8S_DIR)/$(API_SERVICE)

logs:
	kubectl logs -l app=api -n $(NAMESPACE)

port-forward:
	kubectl port-forward svc/api-service 8000:8000 -n $(NAMESPACE)

helm-install:
	helm upgrade --install k8s-task-manager ./helm-chart/k8s-task-manager
