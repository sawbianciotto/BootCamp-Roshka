package org.example.prestamolibrossp.colegioprofesor;

import org.example.prestamolibrossp.colegio.*;
import org.example.prestamolibrossp.profesor.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/colegioprofesores")
public class ColegioProfesorController {
    @Autowired
    private ColegioProfesorService colegioProfesorService;

    @GetMapping
    public List<ColegioProfesorResponseDTO> getAll() {
        return colegioProfesorService.obtenerTodas().stream().map(cp -> {
            ColegioProfesorResponseDTO dto = new ColegioProfesorResponseDTO();
            dto.setId(cp.getId());
            dto.setIdColegio(cp.getIdColegio().getId());
            dto.setNombreColegio(cp.getIdColegio().getNombreColegio());
            dto.setIdProfesor(cp.getIdProfesor().getId());
            dto.setNombreProfesor(cp.getIdProfesor().getNombre());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody ColegioProfesorRequestDTO cpDTO) {
        try {
            ColegioProfesor cp = new ColegioProfesor();
            cp.setIdColegio(new Colegio());
            cp.getIdColegio().setId(cpDTO.getIdColegio());
            cp.setIdProfesor(new Profesor());
            cp.getIdProfesor().setId(cpDTO.getIdProfesor());
            colegioProfesorService.crear(cp);
            return ResponseEntity.ok("ColegioProfesor creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody ColegioProfesorRequestDTO cpDTO) {
        try {
            ColegioProfesor cp = new ColegioProfesor();
            cp.setIdColegio(new Colegio());
            cp.getIdColegio().setId(cpDTO.getIdColegio());
            cp.setIdProfesor(new Profesor());
            cp.getIdProfesor().setId(cpDTO.getIdProfesor());
            colegioProfesorService.actualizar(id, cp);
            return ResponseEntity.ok("ColegioProfesor actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("ColegioProfesor no encontrado");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            colegioProfesorService.eliminar(id);
            return ResponseEntity.ok("ColegioProfesor eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("ColegioProfesor no encontrado");
        }
    }
}
