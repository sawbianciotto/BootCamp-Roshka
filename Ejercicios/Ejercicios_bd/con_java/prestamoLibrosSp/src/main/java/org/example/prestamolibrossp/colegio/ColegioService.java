package org.example.prestamolibrossp.colegio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ColegioService implements ColegioServiceInterface {
    @Autowired
    private ColegioRepo colegioRepo;

    @Override
    public List<Colegio> obtenerTodas() {
        return colegioRepo.findAll();
    }

    @Override
    public void crear(Colegio colegio) {
        if (colegio.getNombreColegio() == null || colegio.getNombreColegio().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del colegio es obligatorio");
        }
        colegioRepo.save(colegio);
    }

    @Override
    public void actualizar(int id, Colegio colegio) {
        if (!colegioRepo.existsById(id)) {
            throw new IllegalArgumentException("El colegio con ese id no existe");
        }
        if (colegio.getNombreColegio() == null || colegio.getNombreColegio().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del colegio es obligatorio");
        }
        colegio.setId(id);
        colegioRepo.save(colegio);
    }

    @Override
    public void eliminar(int id) {
        if (!colegioRepo.existsById(id)) {
            throw new IllegalArgumentException("El colegio con ese id no existe");
        }
        colegioRepo.deleteById(id);
    }
}
