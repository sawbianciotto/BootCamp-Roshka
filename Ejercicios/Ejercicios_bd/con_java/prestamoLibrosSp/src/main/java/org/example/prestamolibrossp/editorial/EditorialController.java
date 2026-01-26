package org.example.prestamolibrossp.editorial;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/editoriales")
public class EditorialController {
    @Autowired
    private EditorialService editorialService;

    @GetMapping
    public List<EditorialResponseDTO> getAll() {
        return editorialService.obtenerTodas().stream().map(editorial -> {
            EditorialResponseDTO dto = new EditorialResponseDTO();
            dto.setId(editorial.getId());
            dto.setEditorialNombre(editorial.getEditorialNombre());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody EditorialRequestDTO editorialDTO) {
        try {
            Editorial editorial = new Editorial();
            editorial.setEditorialNombre(editorialDTO.getEditorialNombre());
            editorialService.crear(editorial);
            return ResponseEntity.ok("Editorial creada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody EditorialRequestDTO editorialDTO) {
        try {
            Editorial editorial = new Editorial();
            editorial.setEditorialNombre(editorialDTO.getEditorialNombre());
            editorialService.actualizar(id, editorial);
            return ResponseEntity.ok("Editorial actualizada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Editorial no encontrada");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            editorialService.eliminar(id);
            return ResponseEntity.ok("Editorial eliminada exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Editorial no encontrada");
        }
    }
}
