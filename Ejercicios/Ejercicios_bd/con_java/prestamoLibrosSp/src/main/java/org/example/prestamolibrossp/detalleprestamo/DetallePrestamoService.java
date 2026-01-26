package org.example.prestamolibrossp.detalleprestamo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DetallePrestamoService implements DetallePrestamoServiceInterface {
    @Autowired
    private DetallePrestamoRepo detallePrestamoRepo;

    @Override
    public List<DetallePrestamo> obtenerTodas() {
        return detallePrestamoRepo.findAll();
    }

    @Override
    public void crear(DetallePrestamo detallePrestamo) {
        detallePrestamoRepo.save(detallePrestamo);
    }

    @Override
    public void actualizar(int id, DetallePrestamo detallePrestamo) {
        if (!detallePrestamoRepo.existsById(id)) {
            throw new IllegalArgumentException("El detalle con ese id no existe");
        }
        detallePrestamo.setId(id);
        detallePrestamoRepo.save(detallePrestamo);
    }

    @Override
    public void eliminar(int id) {
        if (!detallePrestamoRepo.existsById(id)) {
            throw new IllegalArgumentException("El detalle con ese id no existe");
        }
        detallePrestamoRepo.deleteById(id);
    }
}
