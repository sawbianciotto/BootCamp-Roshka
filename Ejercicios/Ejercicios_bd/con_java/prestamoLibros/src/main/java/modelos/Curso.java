package modelos;

public class Curso {
    private int id;
    private String nombre;

    public Curso(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Curso(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public int getId() {
        return id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
