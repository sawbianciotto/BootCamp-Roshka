"use client"
import { useEffect, useState } from "react"

export default function DashboardPage() {
  const [datos, setDatos] = useState([])
  const [error, setError] = useState("")

  useEffect(() => {
    const token = localStorage.getItem("token")
    fetch("http://localhost:8080/prestamos", {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    })
      .then(res => {
        if (!res.ok) throw new Error("No autorizado")
        return res.json()
      })
      .then(data => setDatos(data))
      .catch(err => setError(err.message))
  }, [])

  return (
    <div className="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
        <div className="w-full">
            <h1 className="text-2xl font-bold mb-4">Prestamos</h1>
            {error && <p className="text-red-500">{error}</p>}
            <div className="overflow-x-auto">
                <table className="w-full min-w-full border border-gray-300 rounded">
                    <thead>
                    <tr className="bg-gray-100">
                        <th className="border px-4 py-2 whitespace-nowrap">ID</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Fecha</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Profesor</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Colegio</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Aula</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Curso</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Asignatura</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Libro</th>
                        <th className="border px-4 py-2 whitespace-nowrap">Editorial</th>
                    </tr>
                    </thead>
                    <tbody>
                    {datos.map((item: any) => (
                        <tr key={item.idPrestamo}>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.idPrestamo}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.fechaPrestamo}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.profesorNombre}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.colegioNombre}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.aulaNombre}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.cursoNombre}</td>
                        <td className="border px-4 py-2 whitespace-nowrap">{item.asignaturaNombre}</td>
                        <td className="border px-4 py-2">{item.detalle.map((d: any) => d.nombreLibro).join("/ ")}</td>
                        <td className="border px-4 py-2">{item.detalle.map((d: any) => d.nombreEditorial).join("/ ")}</td>
                        </tr>
                    ))}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
  )
}