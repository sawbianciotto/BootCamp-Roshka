package org.example.prestamolibrossp.colegio;

import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/colegios")
public class ColegioController {
    @Autowired
    private ColegioService colegioService;

    @GetMapping
    public List<ColegioResponseDTO> getAll() {
        return colegioService.obtenerTodas().stream().map(colegio -> {
            ColegioResponseDTO dto = new ColegioResponseDTO();
            dto.setId(colegio.getId());
            dto.setNombreColegio(colegio.getNombreColegio());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody ColegioRequestDTO colegioDTO) {
        try {
            Colegio colegio = new Colegio();
            colegio.setNombreColegio(colegioDTO.getNombreColegio());
            colegioService.crear(colegio);
            return ResponseEntity.ok("Colegio creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody ColegioRequestDTO colegioDTO) {
        try {
            Colegio colegio = new Colegio();
            colegio.setNombreColegio(colegioDTO.getNombreColegio());
            colegioService.actualizar(id, colegio);
            return ResponseEntity.ok("Colegio actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Colegio no encontrado");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            colegioService.eliminar(id);
            return ResponseEntity.ok("Colegio eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Colegio no encontrado");
        }
    }
}
