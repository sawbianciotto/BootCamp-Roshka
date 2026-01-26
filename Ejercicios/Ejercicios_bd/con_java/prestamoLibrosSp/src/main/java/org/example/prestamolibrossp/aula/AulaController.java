package org.example.prestamolibrossp.aula;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/aulas")
public class AulaController {
    @Autowired
    private AulaService aulaService;

    @GetMapping
    public List<AulaResponseDTO> getAll() {
        return aulaService.obtenerTodas().stream().map(aula -> {
            AulaResponseDTO dto = new AulaResponseDTO();
            dto.setId(aula.getId());
            dto.setNombreAula(aula.getNombreAula());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody AulaRequestDTO aulaDTO) {
        try {
            Aula aula = new Aula();
            aula.setNombreAula(aulaDTO.getNombreAula());
            aulaService.crear(aula);
            return ResponseEntity.ok("Aula creada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody AulaRequestDTO aulaDTO) {
        try {
            Aula aula = new Aula();
            aula.setNombreAula(aulaDTO.getNombreAula());
            aulaService.actualizar(id, aula);
            return ResponseEntity.ok("Aula actualizada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Aula no encontrada");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            aulaService.eliminar(id);
            return ResponseEntity.ok("Aula eliminada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Aula no encontrada");
        }
    }
}
