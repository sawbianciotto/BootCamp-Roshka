package org.example.prestamolibrossp.prestamo;

import java.util.List;
import org.example.prestamolibrossp.detalleprestamo.DetalleRequestDTO;

public class PrestamoRequestDTO {
    private int idProfesor;
    private int idAula;
    private int idCurso;
    private int idAsignatura;
    private int idColegio;
    private List<DetalleRequestDTO> detalles;

    public int getIdProfesor() { return idProfesor; }
    public void setIdProfesor(int idProfesor) { this.idProfesor = idProfesor; }

    public int getIdAula() { return idAula; }
    public void setIdAula(int idAula) { this.idAula = idAula; }

    public int getIdCurso() { return idCurso; }
    public void setIdCurso(int idCurso) { this.idCurso = idCurso; }

    public int getIdAsignatura() { return idAsignatura; }
    public void setIdAsignatura(int idAsignatura) { this.idAsignatura = idAsignatura; }

    public int getIdColegio() { return idColegio; }
    public void setIdColegio(int idColegio) { this.idColegio = idColegio; }

    public List<DetalleRequestDTO> getDetalles() { return detalles; }
    public void setDetalles(List<DetalleRequestDTO> detalles) { this.detalles = detalles; }
}
