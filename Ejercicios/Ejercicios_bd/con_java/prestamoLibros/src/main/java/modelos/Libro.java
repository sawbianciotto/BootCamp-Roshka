package modelos;

public class Libro {
    int id;
    String nombre;
    int idEditorial;

    public Libro(int id, String nombre, int idEditorial) {
        this.id = id;
        this.nombre = nombre;
        this.idEditorial = idEditorial;
    }

    public Libro(String nombre, int idEditorial) {
        this.nombre = nombre;
        this.idEditorial = idEditorial;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public int getIdEditorial() {
        return idEditorial;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}


