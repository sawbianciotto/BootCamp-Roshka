package org.example.prestamolibrossp.colegioprofesor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ColegioProfesorService implements ColegioProfesorServiceInterface {
    @Autowired
    private ColegioProfesorRepo colegioProfesorRepo;

    @Override
    public List<ColegioProfesor> obtenerTodas() {
        return colegioProfesorRepo.findAll();
    }

    @Override
    public void crear(ColegioProfesor colegioProfesor) {
        if (colegioProfesor.getIdColegio() == null || colegioProfesor.getIdColegio().getId() == null) {
            throw new IllegalArgumentException("El id del colegio es obligatorio");
        }
        if (colegioProfesor.getIdProfesor() == null || colegioProfesor.getIdProfesor().getId() == null) {
            throw new IllegalArgumentException("El id del profesor es obligatorio");
        }
        colegioProfesorRepo.save(colegioProfesor);
    }

    @Override
    public void actualizar(int id, ColegioProfesor colegioProfesor) {
        if (!colegioProfesorRepo.existsById(id)) {
            throw new IllegalArgumentException("El registro con ese id no existe");
        }
        if (colegioProfesor.getIdColegio() == null || colegioProfesor.getIdColegio().getId() == null) {
            throw new IllegalArgumentException("El id del colegio es obligatorio");
        }
        if (colegioProfesor.getIdProfesor() == null || colegioProfesor.getIdProfesor().getId() == null) {
            throw new IllegalArgumentException("El id del profesor es obligatorio");
        }
        colegioProfesor.setId(id);
        colegioProfesorRepo.save(colegioProfesor);
    }

    @Override
    public void eliminar(int id) {
        if (!colegioProfesorRepo.existsById(id)) {
            throw new IllegalArgumentException("El registro con ese id no existe");
        }
        colegioProfesorRepo.deleteById(id);
    }
}
