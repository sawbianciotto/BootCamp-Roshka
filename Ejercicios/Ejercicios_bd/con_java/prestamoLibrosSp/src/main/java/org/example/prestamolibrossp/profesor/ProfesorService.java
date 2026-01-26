package org.example.prestamolibrossp.profesor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ProfesorService implements ProfesorServiceInterface {
    @Autowired
    private ProfesorRepo profesorRepo;

    @Override
    public List<Profesor> obtenerTodas() {
        return profesorRepo.findAll();
    }

    @Override
    public void crear(Profesor profesor) {
        if (profesor.getNombre() == null || profesor.getNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del profesor es obligatorio");
        }
        profesorRepo.save(profesor);
    }

    @Override
    public void actualizar(int id, Profesor profesor) {
        if (!profesorRepo.existsById(id)) {
            throw new IllegalArgumentException("El profesor con ese id no existe");
        }
        if (profesor.getNombre() == null || profesor.getNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del profesor es obligatorio");
        }
        profesor.setId(id);
        profesorRepo.save(profesor);
    }

    @Override
    public void eliminar(int id) {
        if (!profesorRepo.existsById(id)) {
            throw new IllegalArgumentException("El profesor con ese id no existe");
        }
        profesorRepo.deleteById(id);
    }
}
