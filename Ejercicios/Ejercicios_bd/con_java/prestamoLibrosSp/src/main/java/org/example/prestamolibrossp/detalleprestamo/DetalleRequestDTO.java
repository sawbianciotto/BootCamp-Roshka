package org.example.prestamolibrossp.detalleprestamo;

public class DetalleRequestDTO {
    private Integer idPrestamo;
    private Integer idLibro;
    public Integer getIdPrestamo() { return idPrestamo; }
    public void setIdPrestamo(Integer idPrestamo) { this.idPrestamo = idPrestamo; }
    public Integer getIdLibro() { return idLibro; }
    public void setIdLibro(Integer idLibro) { this.idLibro = idLibro; }
}
