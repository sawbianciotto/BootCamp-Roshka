package org.example.prestamolibrossp.libro;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import org.example.prestamolibrossp.editorial.*;

@RestController
@RequestMapping("/libros")
public class LibroController {
    @Autowired
    private LibroServiceInterface libroService;

    @GetMapping
    public List<LibroResponseDTO> getAll() {
        return libroService.obtenerTodas().stream().map(libro -> {
            LibroResponseDTO dto = new LibroResponseDTO();
            dto.setId(libro.getId());
            dto.setLibroNombre(libro.getLibroNombre());
            dto.setIdEditorial(libro.getIdEditorial() != null ? libro.getIdEditorial().getId() : 0);
            return dto;
        }).toList();
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody LibroRequestDTO request) {
        try {
            Libro libro = new Libro();
            libro.setLibroNombre(request.getLibroNombre());
            org.example.prestamolibrossp.editorial.Editorial editorial = new Editorial();
            editorial.setId(request.getIdEditorial());
            libro.setIdEditorial(editorial);
            libroService.crear(libro);
            return ResponseEntity.ok("Libro creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody LibroRequestDTO request) {
        try {
            Libro libro = new Libro();
            libro.setLibroNombre(request.getLibroNombre());
            org.example.prestamolibrossp.editorial.Editorial editorial = new Editorial();
            editorial.setId(request.getIdEditorial());
            libro.setIdEditorial(editorial);
            libroService.actualizar(id, libro);
            return ResponseEntity.ok("Libro actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Libro no encontrado");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            libroService.eliminar(id);
            return ResponseEntity.ok("Libro eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Libro no encontrado");
        }
    }
}
