package org.example.prestamolibrossp.colegioprofesor;

public class ColegioProfesorResponseDTO {
    private Integer id;
    private Integer idColegio;
    private String nombreColegio;
    private Integer idProfesor;
    private String nombreProfesor;

    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getIdColegio() { return idColegio; }
    public void setIdColegio(Integer idColegio) { this.idColegio = idColegio; }
    public String getNombreColegio() { return nombreColegio; }
    public void setNombreColegio(String nombreColegio) { this.nombreColegio = nombreColegio; }
    public Integer getIdProfesor() { return idProfesor; }
    public void setIdProfesor(Integer idProfesor) { this.idProfesor = idProfesor; }
    public String getNombreProfesor() { return nombreProfesor; }
    public void setNombreProfesor(String nombreProfesor) { this.nombreProfesor = nombreProfesor; }
}
