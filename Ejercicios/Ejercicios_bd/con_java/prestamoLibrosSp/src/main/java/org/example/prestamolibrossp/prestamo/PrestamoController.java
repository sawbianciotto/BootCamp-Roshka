package org.example.prestamolibrossp.prestamo;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.example.prestamolibrossp.detalleprestamo.*;
import java.util.List;
import java.util.stream.Collectors;

@RequestMapping
@RestController
public class PrestamoController {

    @Autowired
    private PrestamoService prestamoService;

    @GetMapping("/prestamos")
    public List<PrestamoResponseDTO> obtenerPrestamos(){
        List<Prestamo> prestamos = prestamoService.obtenerPrestamosConRelaciones();
            return prestamos.stream().map(prestamo -> {
                System.out.println("Detalles para prestamo " + prestamo.getId() + ": " + prestamo.getDetalles().size());
                PrestamoResponseDTO dto = new PrestamoResponseDTO();
                dto.setIdPrestamo(prestamo.getId());
                dto.setFechaPrestamo(prestamo.getFechaPrestamo().toString());
                dto.setIdProfesor(prestamo.getIdProfesor().getId());
                dto.setProfesorNombre(prestamo.getIdProfesor().getNombre());
                dto.setIdAula(prestamo.getIdAula().getId());
                dto.setAulaNombre(prestamo.getIdAula().getNombreAula());
                dto.setIdCurso(prestamo.getIdCurso().getId().toString());
                dto.setCursoNombre(prestamo.getIdCurso().getNombreCurso());
                dto.setIdColegio(prestamo.getIdColegio().getId());
                dto.setColegioNombre(prestamo.getIdColegio().getNombreColegio());
                dto.setIdAsignatura(prestamo.getIdAsignatura().getId());
                dto.setAsignaturaNombre(prestamo.getIdAsignatura().getAsignaturaNombre());
               
                List<DetalleResponseDTO> detallesDTO = prestamo.getDetalles().stream().map(detalle -> {
                    DetalleResponseDTO d = new DetalleResponseDTO();
                    d.setIdDetalle(detalle.getId());
                    d.setIdPrestamo(detalle.getIdPrestamo().getId());
                    d.setIdLibro(detalle.getIdLibro().getId());
                    d.setNombreLibro(detalle.getIdLibro().getLibroNombre());
                    d.setIdEditorial(detalle.getIdLibro().getIdEditorial().getId());
                    d.setNombreEditorial(detalle.getIdLibro().getIdEditorial().getEditorialNombre());
                    return d;
                }).collect(Collectors.toList());
                dto.setDetalle(detallesDTO);
                return dto;
            }).collect(Collectors.toList());
            
    }

    @PostMapping("/Prestamo")
    public ResponseEntity<String> crearPrestamoConIds(@RequestBody PrestamoRequestDTO prestamo) {
        try{
            prestamoService.crearPrestamoSer(
                prestamo.getIdProfesor(), 
                prestamo.getIdAula(), 
                prestamo.getIdCurso(), 
                prestamo.getIdAsignatura(),
                prestamo.getIdColegio(),
                prestamo.getDetalles());
            return ResponseEntity.ok("Préstamo creado exitosamente");
        } catch (Exception e){
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No se pudo crear el préstamo: " + e.getMessage());

        }
    }

    @PutMapping("/Prestamo/{id}")
    public ResponseEntity<String> actualizarPrestamo(@RequestBody PrestamoRequestDTO prestamo, @PathVariable int id){
        try{
            prestamoService.actualizarPresta(
                id,
                prestamo.getIdProfesor(), 
                prestamo.getIdAula(), 
                prestamo.getIdCurso(), 
                prestamo.getIdAsignatura(),
                prestamo.getIdColegio(),
                prestamo.getDetalles());
            return ResponseEntity.ok("Préstamo actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No se pudo actualizar el préstamo: " + e.getMessage());
        }
    }

    @DeleteMapping("/Prestamo/{id}")
    public ResponseEntity<String> eliminarPrestamoId(@PathVariable int id){
        try {
            prestamoService.eliminarPrestamo(id);
            return ResponseEntity.ok("Préstamo eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No se pudo eliminar el préstamo: " + e.getMessage());
        }
    }
}
