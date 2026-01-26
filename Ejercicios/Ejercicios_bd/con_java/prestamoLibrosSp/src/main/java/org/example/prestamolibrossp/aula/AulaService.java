package org.example.prestamolibrossp.aula;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AulaService implements AulaServiceInterface {
    @Autowired
    private AulaRepo aulaRepo;

    @Override
    public List<Aula> obtenerTodas() {
        return aulaRepo.findAll();
    }

    @Override
    public void crear(Aula aula) {
        if (aula.getNombreAula() == null || aula.getNombreAula().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del aula es obligatorio");
        }
        aulaRepo.save(aula);
    }

    @Override
    public void actualizar(int id, Aula aula) {
        if (!aulaRepo.existsById(id)) {
            throw new IllegalArgumentException("El aula con ese id no existe");
        }
        if (aula.getNombreAula() == null || aula.getNombreAula().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del aula es obligatorio");
        }
        aula.setId(id);
        aulaRepo.save(aula);
    }

    @Override
    public void eliminar(int id) {
        if (!aulaRepo.existsById(id)) {
            throw new IllegalArgumentException("El aula con ese id no existe");
        }
        aulaRepo.deleteById(id);
    }
}
