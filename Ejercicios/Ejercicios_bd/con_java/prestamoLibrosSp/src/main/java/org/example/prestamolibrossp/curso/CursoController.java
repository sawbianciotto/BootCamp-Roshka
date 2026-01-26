package org.example.prestamolibrossp.curso;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/cursos")
public class CursoController {
    @Autowired
    private CursoService cursoService;

    @GetMapping
    public List<CursoResponseDTO> getAll() {
        return cursoService.obtenerTodas().stream().map(curso -> {
            CursoResponseDTO dto = new CursoResponseDTO();
            dto.setId(curso.getId());
            dto.setNombreCurso(curso.getNombreCurso());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody CursoRequestDTO cursoDTO) {
        try {
            Curso curso = new Curso();
            curso.setNombreCurso(cursoDTO.getNombreCurso());
            cursoService.crear(curso);
            return ResponseEntity.ok("Curso creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody CursoRequestDTO cursoDTO) {
        try {
            Curso curso = new Curso();
            curso.setNombreCurso(cursoDTO.getNombreCurso());
            cursoService.actualizar(id, curso);
            return ResponseEntity.ok("Curso actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Curso no encontrado");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            cursoService.eliminar(id);
            return ResponseEntity.ok("Curso eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Curso no encontrado");
        }
    }
}
