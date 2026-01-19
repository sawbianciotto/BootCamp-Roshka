package crud.tablas;
import modelos.Aula;

public interface AulaInterfaz {
    void crearAula(Aula aula) throws Exception;
    Aula leerAula(int id) throws Exception;
    void actualizarAula(Aula aula) throws Exception;
}
