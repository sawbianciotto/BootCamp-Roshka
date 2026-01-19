package modelos;

public class Prestamo {
    int id;
    int idProfesor;
    String fechaPrestamo;
    int idCurso;
    int idAula;
    int idAsignatura;

    public Prestamo(int id, int idProfesor, String fechaPrestamo, int idCurso, int idAula, int idAsignatura) {
        this.id = id;
        this.idProfesor = idProfesor;
        this.fechaPrestamo = fechaPrestamo;
        this.idCurso = idCurso;
        this.idAula = idAula;
        this.idAsignatura = idAsignatura;
    }

    public Prestamo(int idProfesor, String fechaPrestamo, int idCurso, int idAula, int idAsignatura) {
        this.idProfesor = idProfesor;
        this.fechaPrestamo = fechaPrestamo;
        this.idCurso = idCurso;
        this.idAula = idAula;
        this.idAsignatura = idAsignatura;
    }

    public int getId() {
        return id;
    }

    public int getIdProfesor() {
        return idProfesor;
    }

    public String getFechaPrestamo() {
        return fechaPrestamo;
    }

        public int getIdCurso() {
            return idCurso;
        }

        public int getIdAula() {
            return idAula;
        }

        public int getIdAsignatura() {
            return idAsignatura;
        }

    public void setFechaPrestamo(String fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }
}

