
from fastapi import FastAPI
from .routers import tasks
from .database import engine, Base

Base.metadata.create_all(bind=engine)

app = FastAPI()

app.include_router(tasks.router)

@app.get("/")
def read_root():
    return {"message": "API de Gestión de Tareas en Kubernetes"}
