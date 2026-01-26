package org.example.prestamolibrossp.detalleprestamo;

import java.util.List;

public interface DetallePrestamoServiceInterface {
    List<DetallePrestamo> obtenerTodas();
    void crear(DetallePrestamo detallePrestamo);
    void actualizar(int id, DetallePrestamo detallePrestamo);
    void eliminar(int id);
}
