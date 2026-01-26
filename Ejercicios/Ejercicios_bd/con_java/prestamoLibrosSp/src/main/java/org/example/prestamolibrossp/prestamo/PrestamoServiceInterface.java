package org.example.prestamolibrossp.prestamo;

import java.util.List;
import org.example.prestamolibrossp.detalleprestamo.*;

public interface PrestamoServiceInterface {
    List<Prestamo> obtenerPrestamosConRelaciones();
    void crearPrestamoSer(int idProfesor, int idAula, int idCurso, int idAsignatura, int idColegio, List<DetalleRequestDTO> detalles);
    void eliminarPrestamo(Integer id);
    void actualizarPresta(int id, int idProfesor, int idAula, int idCurso, int idAsignatura, int idColegio, List<DetalleRequestDTO> detalles);
}
