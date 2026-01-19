package crud.tablas;
import modelos.Libro;

public interface LibroInterfaz {
    void crearLibro(Libro libro) throws Exception;
    Libro leerLibro(int id) throws Exception;
    void actualizarLibro(Libro libro) throws Exception;
}
