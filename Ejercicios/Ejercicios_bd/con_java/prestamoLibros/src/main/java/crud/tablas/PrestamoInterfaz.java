package crud.tablas;
import modelos.Prestamo;

public interface PrestamoInterfaz {
    void crearPrestamo(Prestamo prestamo) throws Exception;
    Prestamo leerPrestamo(int id) throws Exception;
    void actualizarPrestamo(Prestamo prestamo) throws Exception;
}
