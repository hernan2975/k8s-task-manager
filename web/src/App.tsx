import { useEffect, useState } from 'react'
import { getTasks } from './api'

type Task = {
  id: number
  title: string
  description: string
}

function App() {
  const [tasks, setTasks] = useState<Task[]>([])

  useEffect(() => {
    getTasks().then(setTasks).catch(console.error)
  }, [])

  return (
    <main style={{ fontFamily: 'sans-serif', padding: 20 }}>
      <h1>Gestor de Tareas (Kubernetes)</h1>
      <ul>
        {tasks.map(task => (
          <li key={task.id}>
            <strong>{task.title}</strong>: {task.description}
          </li>
        ))}
      </ul>
    </main>
  )
}

export default App
