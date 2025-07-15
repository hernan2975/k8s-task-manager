export async function getTasks() {
  const res = await fetch("http://localhost:8000/tasks")
  if (!res.ok) throw new Error("Error al obtener tareas")
  return res.json()
}
