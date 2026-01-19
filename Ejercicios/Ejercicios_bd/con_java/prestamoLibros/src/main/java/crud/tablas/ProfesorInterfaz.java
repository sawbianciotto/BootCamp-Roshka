package crud.tablas;
import modelos.Profesor;

public interface ProfesorInterfaz {
    void crearProfesor(Profesor profesor) throws Exception;
    Profesor leerProfesor(int id) throws Exception;
    void actualizarProfesor(Profesor profesor) throws Exception;
}


