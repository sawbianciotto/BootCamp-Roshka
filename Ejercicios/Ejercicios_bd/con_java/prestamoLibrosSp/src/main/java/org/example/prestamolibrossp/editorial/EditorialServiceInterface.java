package org.example.prestamolibrossp.editorial;

import java.util.List;

public interface EditorialServiceInterface {
    List<Editorial> obtenerTodas();
    void crear(Editorial editorial);
    void actualizar(int id, Editorial editorial);
    void eliminar(int id);
}
