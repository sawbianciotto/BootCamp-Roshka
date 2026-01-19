package crud.tablas;
import modelos.Curso;

public interface CursoInterfaz {
    void crearCurso(Curso curso) throws Exception;
    Curso leerCurso(int id) throws Exception;
    void actualizarCurso(Curso curso) throws Exception;
}
