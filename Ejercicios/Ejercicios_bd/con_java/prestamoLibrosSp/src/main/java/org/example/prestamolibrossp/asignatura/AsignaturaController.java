package org.example.prestamolibrossp.asignatura;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/asignaturas")
public class AsignaturaController {
    @Autowired
    private AsignaturaService asignaturaService;

    @GetMapping
    public List<AsignaturaResponseDTO> getAll() {
        return asignaturaService.obtenerTodas().stream().map(asignatura -> {
            AsignaturaResponseDTO dto = new AsignaturaResponseDTO();
            dto.setId(asignatura.getId());
            dto.setAsignaturaNombre(asignatura.getAsignaturaNombre());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody AsignaturaRequestDTO asignaturaDTO) {
        try {
            Asignatura asignatura = new Asignatura();
            asignatura.setAsignaturaNombre(asignaturaDTO.getAsignaturaNombre());
            asignaturaService.crear(asignatura);
            return ResponseEntity.ok("Asignatura creada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody AsignaturaRequestDTO asignaturaDTO) {
        try {
            Asignatura asignatura = new Asignatura();
            asignatura.setAsignaturaNombre(asignaturaDTO.getAsignaturaNombre());
            asignaturaService.actualizar(id, asignatura);
            return ResponseEntity.ok("Asignatura actualizada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Asignatura no encontrada");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            asignaturaService.eliminar(id);
            return ResponseEntity.ok("Asignatura eliminada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Asignatura no encontrada");
        }
    }
}
