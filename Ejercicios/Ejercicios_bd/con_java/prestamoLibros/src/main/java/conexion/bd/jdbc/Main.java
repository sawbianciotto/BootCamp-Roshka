package conexion.bd.jdbc;
import modelos.*;
import crud.tablas.*;

public class Main {
    public static void main(String[] args) {
        try {
            PrestamoImplementacion prestamoCrud = new PrestamoImplementacion();
            ProfesorImplementacion profesorCrud = new ProfesorImplementacion();
            AsignaturaImplementacion asignaturaCrud = new AsignaturaImplementacion();
            EditorialImplementacion editorialCrud = new EditorialImplementacion();
            LibroImplementacion libroCrud = new LibroImplementacion();
            CursoImplementacion cursoCrud = new CursoImplementacion();
            AulaImplementacion aulaCrud = new AulaImplementacion();
            ColegioImplementacion colegioCrud = new ColegioImplementacion();
            DetallePrestamoImplementacion detallePrestamoCrud = new DetallePrestamoImplementacion();

            /* 
            // Profesor
            Profesor nuevoProfesor = new Profesor("Roberto Acosta");
            profesorCrud.crearProfesor(nuevoProfesor);
            Profesor profesor = profesorCrud.leerProfesor(1);
            System.out.println("Profesor: " + (profesor != null ? profesor.getNombre() : "No encontrado"));
            profesorCrud.actualizarProfesor(new Profesor(1, "Roberto Actualizado"));

            //Asignatura
            Asignatura nuevaAsignatura = new Asignatura("Castellano");
            asignaturaCrud.crearAsignatura(nuevaAsignatura);
            Asignatura asignatura = asignaturaCrud.leerAsignatura(1);
            System.out.println("Asignatura: " + (asignatura != null ? asignatura.getNombre() : "No encontrada"));
            asignaturaCrud.actualizarAsignatura(new Asignatura(1, "Castellano Actualizado"));

            // Editorial
            Editorial nuevaEditorial = new Editorial("Alfaguara");
            editorialCrud.crearEditorial(nuevaEditorial);
            Editorial editorial = editorialCrud.leerEditorial(1);
            System.out.println("Editorial: " + (editorial != null ? editorial.getNombre() : "No encontrada"));
            editorialCrud.actualizarEditorial(new Editorial(1, "Alfaguara Actualizada"));

            // Libro
            Libro nuevoLibro = new Libro("Cien años de soledad", 1);
            libroCrud.crearLibro(nuevoLibro);
            Libro libro = libroCrud.leerLibro(1);
            System.out.println("Libro: " + (libro != null ? libro.getNombre() : "No encontrado"));
            libroCrud.actualizarLibro(new Libro(1, "Cien años de soledad Actualizado", 1));

            // Curso
            Curso nuevoCurso = new Curso("Curso 4");
            cursoCrud.crearCurso(nuevoCurso);
            Curso curso = cursoCrud.leerCurso(1);
            System.out.println("Curso: " + (curso != null ? curso.getNombre() : "No encontrado"));
            cursoCrud.actualizarCurso(new Curso(1, "Curso 4 Actualizado"));

            // Aula
            Aula nuevaAula = new Aula("Aula 101");
            aulaCrud.crearAula(nuevaAula);
            Aula aula = aulaCrud.leerAula(1);
            System.out.println("Aula: " + (aula != null ? aula.getNombre() : "No encontrada"));
            aulaCrud.actualizarAula(new Aula(1, "Aula 101 Actualizada"));

            // Colegio
            Colegio nuevoColegio = new Colegio("Colegio Nacional");
            colegioCrud.crearColegio(nuevoColegio);
            Colegio colegio = colegioCrud.leerColegio(1);
            System.out.println("Colegio: " + (colegio != null ? colegio.getNombre() : "No encontrado"));
            colegioCrud.actualizarColegio(new Colegio(1, "Colegio Nacional Actualizado"));

            // Prestamo
            Prestamo nuevoPrestamo = new Prestamo(1, "2026-01-16", 1, 1, 1);
            prestamoCrud.crearPrestamo(nuevoPrestamo);

            System.out.println("Prestamo: " + (prestamo != null ? prestamo.getFechaPrestamo() : "No encontrado"));
            prestamoCrud.actualizarPrestamo(new Prestamo(1, 1, "2026-01-17", 1, 1, 1));
            */

            //con cambiar la id se imprime el prestamo que se quiera ver
            Prestamo prestamo1 = prestamoCrud.leerPrestamo(3);
            if (prestamo1 != null) {
                Profesor profesor1 = profesorCrud.leerProfesor(prestamo1.getIdProfesor());
                Aula aula1 = aulaCrud.leerAula(prestamo1.getIdAula());
                Curso curso1 = cursoCrud.leerCurso(prestamo1.getIdCurso());
                Asignatura asignatura1 = asignaturaCrud.leerAsignatura(prestamo1.getIdAsignatura());
                DetallePrestamo detallePrestamo1 = detallePrestamoCrud.lDetallePrestamo(prestamo1.getId());
                String nombreProfesor = (profesor1 != null) ? profesor1.getNombre() : "No encontrado";
                String nombreAula = (aula1 != null) ? aula1.getNombre() : "No encontrada";
                String nombreCurso = (curso1 != null) ? curso1.getNombre() : "No encontrado";
                String nombreAsignatura = (asignatura1 != null) ? asignatura1.getNombre() : "No encontrada";

                System.out.println(
                    "Prestamo: id = " + prestamo1.getId() +
                    "\nprofesor = " + nombreProfesor +
                    "\nfechaPrestamo = " + prestamo1.getFechaPrestamo() +
                    "\ncurso = " + nombreCurso +
                    "\naula = " + nombreAula +
                    "\nasignatura = " + nombreAsignatura +
                    "\nlibro = " + (libroCrud.leerLibro(detallePrestamo1.getIdLibro())).getNombre()
                );
            } else {
                System.out.println("Prestamo: No encontrado");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
