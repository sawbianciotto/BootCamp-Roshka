package crud.tablas;
import modelos.Editorial;

public interface EditorialInterfaz {
    void crearEditorial(Editorial editorial) throws Exception;
    Editorial leerEditorial(int id) throws Exception;
    void actualizarEditorial(Editorial editorial) throws Exception;
}
