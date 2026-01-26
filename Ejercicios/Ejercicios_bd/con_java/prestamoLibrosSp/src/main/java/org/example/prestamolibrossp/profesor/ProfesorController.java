package org.example.prestamolibrossp.profesor;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;

@RestController
@RequestMapping("/profesores")
public class ProfesorController {
    @Autowired
    private ProfesorServiceInterface profesorService;

    @GetMapping
    public List<ProfesorResponseDTO> getAll() {
        return profesorService.obtenerTodas().stream().map(this::toResponseDTO).toList();
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody ProfesorRequestDTO request) {
        try {
            Profesor profesor = toEntity(request);
            profesorService.crear(profesor);
            return ResponseEntity.ok("Profesor creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody ProfesorRequestDTO request) {
        if (profesorService.obtenerTodas().stream().noneMatch(p -> p.getId() == id)) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Profesor no encontrado");
        }
        Profesor profesor = toEntity(request);
        profesorService.actualizar(id, profesor);
        return ResponseEntity.ok("Profesor actualizado exitosamente");
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        if (profesorService.obtenerTodas().stream().noneMatch(p -> p.getId() == id)) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Profesor no encontrado");
        }
        profesorService.eliminar(id);
        return ResponseEntity.ok("Profesor eliminado exitosamente");
    }

    private ProfesorResponseDTO toResponseDTO(Profesor profesor) {
        ProfesorResponseDTO dto = new ProfesorResponseDTO();
        dto.setId(profesor.getId());
        dto.setNombre(profesor.getNombre());
        return dto;
    }

    private Profesor toEntity(ProfesorRequestDTO dto) {
        Profesor profesor = new Profesor();
        profesor.setNombre(dto.getNombre());
        return profesor;
    }
}
