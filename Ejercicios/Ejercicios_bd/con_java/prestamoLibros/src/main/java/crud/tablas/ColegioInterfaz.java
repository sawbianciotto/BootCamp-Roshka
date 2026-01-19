package crud.tablas;
import modelos.Colegio;

public interface ColegioInterfaz {
    void crearColegio(Colegio colegio) throws Exception;
    Colegio leerColegio(int id) throws Exception;
    void actualizarColegio(Colegio colegio) throws Exception;
}
