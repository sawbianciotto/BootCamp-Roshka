package org.example.prestamolibrossp.colegioprofesor;

import java.util.List;

public interface ColegioProfesorServiceInterface {
    List<ColegioProfesor> obtenerTodas();
    void crear(ColegioProfesor colegioProfesor);
    void actualizar(int id, ColegioProfesor colegioProfesor);
    void eliminar(int id);
}
