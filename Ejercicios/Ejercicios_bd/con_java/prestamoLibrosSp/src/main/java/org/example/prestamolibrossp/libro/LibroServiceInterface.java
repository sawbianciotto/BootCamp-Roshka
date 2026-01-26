package org.example.prestamolibrossp.libro;

import java.util.List;

public interface LibroServiceInterface {
    List<Libro> obtenerTodas();
    void crear(Libro libro);
    void actualizar(int id, Libro libro);
    void eliminar(int id);
}
