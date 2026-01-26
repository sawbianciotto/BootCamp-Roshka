package org.example.prestamolibrossp.libro;

public class LibroResponseDTO {
    private int id;
    private String libroNombre;
    private int idEditorial;
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getLibroNombre() { return libroNombre; }
    public void setLibroNombre(String libroNombre) { this.libroNombre = libroNombre; }
    public int getIdEditorial() { return idEditorial; }
    public void setIdEditorial(int idEditorial) { this.idEditorial = idEditorial; }
}
