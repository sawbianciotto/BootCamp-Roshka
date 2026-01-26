package org.example.prestamolibrossp.aula;

import java.util.List;

public interface AulaServiceInterface {
    List<Aula> obtenerTodas();
    void crear(Aula aula);
    void actualizar(int id, Aula aula);
    void eliminar(int id);
}
