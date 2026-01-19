package modelos;

public class Editorial {
    private int id;
    private String nombre;

    public Editorial(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Editorial(String nombre) {
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
