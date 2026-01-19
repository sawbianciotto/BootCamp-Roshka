package modelos;

public class Profesor {
    private int id;
    private String nombre;

    public Profesor(String nombre) {
        this.nombre = nombre;
    }

    public Profesor(int id, String nombre) {
        this.id = id;
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
