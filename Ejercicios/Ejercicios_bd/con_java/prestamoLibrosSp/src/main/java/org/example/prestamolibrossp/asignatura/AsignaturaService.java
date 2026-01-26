package org.example.prestamolibrossp.asignatura;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AsignaturaService implements AsignaturaServiceInterface {
    @Autowired
    private AsignaturaRepo asignaturaRepo;

    @Override
    public List<Asignatura> obtenerTodas() {
        return asignaturaRepo.findAll();
    }

    @Override
    public void crear(Asignatura asignatura) {
        if (asignatura.getAsignaturaNombre() == null || asignatura.getAsignaturaNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre de la asignatura es obligatorio");
        }
        asignaturaRepo.save(asignatura);
    }

    @Override
    public void actualizar(int id, Asignatura asignatura) {
        if (!asignaturaRepo.existsById(id)) {
            throw new IllegalArgumentException("La asignatura con ese id no existe");
        }
        if (asignatura.getAsignaturaNombre() == null || asignatura.getAsignaturaNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre de la asignatura es obligatorio");
        }
        asignatura.setId(id);
        asignaturaRepo.save(asignatura);
    }

    @Override
    public void eliminar(int id) {
        if (!asignaturaRepo.existsById(id)) {
            throw new IllegalArgumentException("La asignatura con ese id no existe");
        }
        asignaturaRepo.deleteById(id);
    }
}
