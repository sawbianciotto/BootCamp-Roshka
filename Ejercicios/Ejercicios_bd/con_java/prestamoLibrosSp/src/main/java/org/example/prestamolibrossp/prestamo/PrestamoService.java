package org.example.prestamolibrossp.prestamo;
import org.example.prestamolibrossp.asignatura.*;
import org.example.prestamolibrossp.aula.*;
import org.example.prestamolibrossp.curso.*;
import org.example.prestamolibrossp.detalleprestamo.*;
import org.example.prestamolibrossp.libro.*;
import org.example.prestamolibrossp.profesor.*;
import org.example.prestamolibrossp.colegio.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class PrestamoService implements PrestamoServiceInterface{
    @Autowired
    private PrestamoRepo prestamoRepo;
    @Autowired
    private AulaRepo aulaRepo;
    @Autowired
    private CursoRepo cursoRepo;
    @Autowired
    private AsignaturaRepo asignaturaRepo;
    @Autowired
    private LibroRepo libroRepo;
    @Autowired
    private ProfesorRepo profesorRepo;
    @Autowired
    private ColegioRepo colegioRepo;

    
    public List<Prestamo> obtenerPrestamosConRelaciones() {
        List<Prestamo> prestamos = prestamoRepo.findAll();
        return prestamos;
    }

    public void crearPrestamoSer(int idProfesor, int idAula, int idCurso, int idAsignatura, int idColegio, List<DetalleRequestDTO> detalles){
        Profesor profesor = profesorRepo.findById(idProfesor)
            .orElseThrow(() -> new RuntimeException("Profesor no encontrado"));
        Aula aula = aulaRepo.findById(idAula)
            .orElseThrow(() -> new RuntimeException("Aula no encontrada"));
        Curso curso = cursoRepo.findById(idCurso)
            .orElseThrow(() -> new RuntimeException("Curso no encontrado"));
        Asignatura asignatura = asignaturaRepo.findById(idAsignatura)
            .orElseThrow(() -> new RuntimeException("Asignatura no encontrada"));
        Colegio colegio = colegioRepo.findById(idColegio)
            .orElseThrow(() -> new RuntimeException("Colegio no encontrado"));

        List<DetallePrestamo> listaDetalles = new ArrayList<>();
        for (DetalleRequestDTO deta : detalles) {
            Integer idLibro = deta.getIdLibro();
            Libro libro = libroRepo.findById(idLibro)
            .orElseThrow(() -> new RuntimeException("Libro no encontrado"));
            DetallePrestamo detalle = new DetallePrestamo();
            detalle.setIdLibro(libro);
            listaDetalles.add(detalle);
        }
        
        Prestamo prestamo = new Prestamo();
        prestamo.setIdProfesor(profesor);
        prestamo.setIdAula(aula);
        prestamo.setIdCurso(curso);
        prestamo.setIdAsignatura(asignatura);
        prestamo.setIdColegio(colegio);
        prestamo.setDetalles(listaDetalles);
        prestamo.setFechaPrestamo(java.time.LocalDate.now());
        for (DetallePrestamo detalle : listaDetalles) {
            detalle.setIdPrestamo(prestamo);
        }
        prestamoRepo.save(prestamo);

    }

    public void eliminarPrestamo(Integer id){
        prestamoRepo.findById(id).orElseThrow(() -> new RuntimeException("Prestamo no encontrado"));
        prestamoRepo.deleteById(id);
    }

    public void actualizarPresta(int id, int idProfesor, int idAula, int idCurso, int idAsignatura, int idColegio, List<DetalleRequestDTO> detalles){
        Prestamo prestamo = prestamoRepo.findById(id)
            .orElseThrow(() -> new RuntimeException("Préstamo no encontrado"));
        Profesor profesor = profesorRepo.findById(idProfesor)
            .orElseThrow(() -> new RuntimeException("Profesor no encontrado"));
        Aula aula = aulaRepo.findById(idAula)
            .orElseThrow(() -> new RuntimeException("Aula no encontrada"));
        Curso curso = cursoRepo.findById(idCurso)
            .orElseThrow(() -> new RuntimeException("Curso no encontrado"));
        Asignatura asignatura = asignaturaRepo.findById(idAsignatura)
            .orElseThrow(() -> new RuntimeException("Asignatura no encontrada"));
        Colegio colegio = colegioRepo.findById(idColegio)
            .orElseThrow(() -> new RuntimeException("Colegio no encontrado"));

        prestamo.getDetalles().clear();
        for (DetalleRequestDTO detalleRe : detalles) {
            Libro libro = libroRepo.findById(detalleRe.getIdLibro())
            .orElseThrow(() -> new RuntimeException("Libro no encontrado"));
            DetallePrestamo detallePrestamo = new DetallePrestamo();
            detallePrestamo.setIdLibro(libro);
            detallePrestamo.setIdPrestamo(prestamo);
            prestamo.getDetalles().add(detallePrestamo);
        }

        prestamo.setIdProfesor(profesor);
        prestamo.setIdAula(aula);
        prestamo.setIdCurso(curso);
        prestamo.setIdAsignatura(asignatura);
        prestamo.setIdColegio(colegio);
        prestamoRepo.save(prestamo);
    }
}
