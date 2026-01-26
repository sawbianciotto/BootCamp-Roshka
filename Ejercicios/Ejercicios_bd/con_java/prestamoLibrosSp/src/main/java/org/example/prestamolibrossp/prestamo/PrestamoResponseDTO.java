package org.example.prestamolibrossp.prestamo;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.List;

import org.example.prestamolibrossp.detalleprestamo.*;


@JsonPropertyOrder({
    "idPrestamo",
    "fechaPrestamo",
    "idProfesor",
    "profesorNombre",
    "idColegio",
    "colegioNombre",
    "idAula",
    "aulaNombre",
    "idCurso",
    "cursoNombre",
    "idAsignatura",
    "asignaturaNombre"
})

public class PrestamoResponseDTO {
    private Integer idPrestamo;
    private String fechaPrestamo;
    private int idProfesor;
    private String profesorNombre;
    private int idColegio;
    private String colegioNombre;
    private int idAula;
    private String aulaNombre;
    private String idCurso;
    private String cursoNombre;
    private int idAsignatura;
    private String asignaturaNombre;
    private List<DetalleResponseDTO> detalleDTO;

    public String getColegioNombre() { return colegioNombre; }
    public void setColegioNombre(String colegioNombre) { this.colegioNombre = colegioNombre; }

    public Integer getIdPrestamo() { return idPrestamo; }
    public void setIdPrestamo(Integer idPrestamo) { this.idPrestamo = idPrestamo; }

    public int getIdProfesor() { return idProfesor; }
    public void setIdProfesor(int idProfesor) { this.idProfesor = idProfesor; }

    public int getIdColegio() { return idColegio; }
    public void setIdColegio(int idColegio) { this.idColegio = idColegio; }

    public int getIdAula() { return idAula; }
    public void setIdAula(int idAula) { this.idAula = idAula; }

    public String getIdCurso() { return idCurso; }
    public void setIdCurso(String idCurso) { this.idCurso = idCurso; }

    public int getIdAsignatura() { return idAsignatura; }
    public void setIdAsignatura(int idAsignatura) { this.idAsignatura = idAsignatura; }

    public String getFechaPrestamo() { return fechaPrestamo; }
    public void setFechaPrestamo(String fechaPrestamo) { this.fechaPrestamo = fechaPrestamo; }

    public String getProfesorNombre() { return profesorNombre; }
    public void setProfesorNombre(String profesorNombre) { this.profesorNombre = profesorNombre; }

    public String getAulaNombre() { return aulaNombre; }
    public void setAulaNombre(String aulaNombre) { this.aulaNombre = aulaNombre; }

    public String getCursoNombre() { return cursoNombre; }
    public void setCursoNombre(String cursoNombre) { this.cursoNombre = cursoNombre; }

    public String getAsignaturaNombre() { return asignaturaNombre; }
    public void setAsignaturaNombre(String asignaturaNombre) { this.asignaturaNombre = asignaturaNombre; }

    public List<DetalleResponseDTO> getDetalle() { return detalleDTO;}
    public void setDetalle(List<DetalleResponseDTO> detalleDTO) {this.detalleDTO = detalleDTO;}
}
