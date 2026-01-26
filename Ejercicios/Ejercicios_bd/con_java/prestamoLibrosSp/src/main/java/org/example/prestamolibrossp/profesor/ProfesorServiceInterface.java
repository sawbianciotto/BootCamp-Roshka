package org.example.prestamolibrossp.profesor;

import java.util.List;

public interface ProfesorServiceInterface {
    List<Profesor> obtenerTodas();
    void crear(Profesor profesor);
    void actualizar(int id, Profesor profesor);
    void eliminar(int id);
}
