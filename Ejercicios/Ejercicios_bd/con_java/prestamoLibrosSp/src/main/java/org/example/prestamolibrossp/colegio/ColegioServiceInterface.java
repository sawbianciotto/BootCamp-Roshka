package org.example.prestamolibrossp.colegio;

import java.util.List;

public interface ColegioServiceInterface {
    List<Colegio> obtenerTodas();
    void crear(Colegio colegio);
    void actualizar(int id, Colegio colegio);
    void eliminar(int id);
}
