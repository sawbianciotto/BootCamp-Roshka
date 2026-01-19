package modelos;

public class DetallePrestamo {
    int id;
    int idPrestamo;
    int idLibro;

    public DetallePrestamo(int id, int idPrestamo, int idLibro) {
        this.id = id;
        this.idPrestamo = idPrestamo;
        this.idLibro = idLibro;
    }

    public DetallePrestamo(int idPrestamo, int idLibro) {
        this.idPrestamo = idPrestamo;
        this.idLibro = idLibro;
    }

    public int getId(){
        return id;
    }

    public int getIdPrestamo(){
        return idPrestamo;
    }

    public int getIdLibro(){
        return idLibro;
    }
}

