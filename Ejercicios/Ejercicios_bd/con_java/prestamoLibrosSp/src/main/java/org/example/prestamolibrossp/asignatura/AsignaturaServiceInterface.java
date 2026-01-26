package org.example.prestamolibrossp.asignatura;

import java.util.List;

public interface AsignaturaServiceInterface {
    List<Asignatura> obtenerTodas();
    void crear(Asignatura asignatura);
    void actualizar(int id, Asignatura asignatura);
    void eliminar(int id);
}
