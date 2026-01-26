package org.example.prestamolibrossp.detalleprestamo;

import org.example.prestamolibrossp.prestamo.*;
import org.example.prestamolibrossp.libro.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/detalleprestamos")
public class DetallePrestamoController {
    @Autowired
    private DetallePrestamoService detallePrestamoService;

    @GetMapping
    public List<DetalleResponseDTO> getAll() {
        return detallePrestamoService.obtenerTodas().stream().map(dp -> {
            DetalleResponseDTO dto = new DetalleResponseDTO();
            dto.setIdDetalle(dp.getId());
            dto.setIdPrestamo(dp.getIdPrestamo().getId());
            dto.setIdLibro(dp.getIdLibro().getId());
            dto.setNombreLibro(dp.getIdLibro().getLibroNombre());
            dto.setNombreEditorial(dp.getIdLibro().getIdEditorial().getEditorialNombre());
            return dto;
        }).collect(Collectors.toList());
    }

    @PostMapping
    public ResponseEntity<String> create(@RequestBody DetalleRequestDTO dpDTO) {
        try {
            DetallePrestamo dp = new DetallePrestamo();
            dp.setIdPrestamo(new Prestamo());
            dp.getIdPrestamo().setId(dpDTO.getIdPrestamo());
            dp.setIdLibro(new Libro());
            dp.getIdLibro().setId(dpDTO.getIdLibro());
            detallePrestamoService.crear(dp);
            return ResponseEntity.ok("DetallePrestamo creado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> update(@PathVariable int id, @RequestBody DetalleRequestDTO dpDTO) {
        try {
            DetallePrestamo dp = new DetallePrestamo();
            dp.setIdPrestamo(new Prestamo());
            dp.getIdPrestamo().setId(dpDTO.getIdPrestamo());
            dp.setIdLibro(new Libro());
            dp.getIdLibro().setId(dpDTO.getIdLibro());
            detallePrestamoService.actualizar(id, dp);
            return ResponseEntity.ok("DetallePrestamo actualizado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("DetallePrestamo no encontrado");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable int id) {
        try {
            detallePrestamoService.eliminar(id);
            return ResponseEntity.ok("DetallePrestamo eliminado exitosamente");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("DetallePrestamo no encontrado");
        }
    }
}
