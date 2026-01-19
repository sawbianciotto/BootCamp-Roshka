package modelos;

public class Asignatura {
    private int id;
    private String nombre;

    public Asignatura(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Asignatura(String nombre) {
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
