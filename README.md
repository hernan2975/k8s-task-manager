🚀 k8s-task-manager

Microservicios para una app de gestión de tareas, desplegados con Kubernetes y Helm, con CI/CD, observabilidad y mejores prácticas DevOps.

🧱 Estructura del proyecto


k8s-task-manager/
├── api/             # Backend FastAPI (Python)
├── web/             # Frontend React (Vite)
├── k8s/             # Manifiestos Kubernetes
├── helm-chart/      # Helm Chart profesional
├── .github/         # Workflows de CI/CD
├── scripts/         # Scripts útiles para automatizar
├── Makefile         # Comandos rápidos

📦 Requisitos

- Docker
- Minikube o clúster Kubernetes
- Helm v3+
- Git
- Python (solo si usás FastAPI localmente)
- Node.js (para frontend local opcional)

🛠️ Cómo usar el proyecto

🔁 Clonar el repositorio

```bash
git clone https://github.com/tu_usuario/k8s-task-manager.git
cd k8s-task-manager


#🐳 Construir imágenes

```bash
bash scripts/build-images.sh
```
 🚀 Subir a Minikube

```bash
bash scripts/load-images-to-minikube.sh
```

☸️ Desplegar en Kubernetes

Opción A: con manifiestos YAML

```bash
bash scripts/deploy-local.sh
```

Opción B: con Helm

```bash
bash scripts/deploy-helm.sh
```

🔐 Crear secreto para la base de datos

```bash
bash scripts/create-secret.sh
```

✅ CI/CD automático

Se activa con cada push a `main`:

* Construye imágenes Docker (`api`, `web`)
* Sube a Docker Hub
* Despliega vía Helm a Kubernetes (si hay KUBECONFIG)

Configuración de secretos necesaria:

* `DOCKER_USERNAME`
* `DOCKER_PASSWORD`
* `KUBECONFIG_DATA` (solo si hacés deploy desde GitHub)

🧪 Pruebas rápidas

* API: `curl http://localhost:8000/tasks`
* Web: Abrir `minikube service web-service` en el navegador

📃 Licencia

MIT 
