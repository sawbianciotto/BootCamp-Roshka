package crud.tablas;

import modelos.Asignatura;

public interface AsignaturaInterfaz {
    void crearAsignatura(Asignatura asignatura) throws Exception;
    Asignatura leerAsignatura(int id) throws Exception;
    void actualizarAsignatura(Asignatura asignatura) throws Exception; 
}
