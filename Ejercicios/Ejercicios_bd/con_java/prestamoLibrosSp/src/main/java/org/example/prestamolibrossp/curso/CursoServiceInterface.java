package org.example.prestamolibrossp.curso;

import java.util.List;

public interface CursoServiceInterface {
    List<Curso> obtenerTodas();
    void crear(Curso curso);
    void actualizar(int id, Curso curso);
    void eliminar(int id);
}
