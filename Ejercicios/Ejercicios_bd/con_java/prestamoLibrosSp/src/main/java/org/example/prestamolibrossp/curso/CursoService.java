package org.example.prestamolibrossp.curso;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CursoService implements CursoServiceInterface {
    @Autowired
    private CursoRepo cursoRepo;

    @Override
    public List<Curso> obtenerTodas() {
        return cursoRepo.findAll();
    }

    @Override
    public void crear(Curso curso) {
        if (curso.getNombreCurso() == null || curso.getNombreCurso().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del curso es obligatorio");
        }
        cursoRepo.save(curso);
    }

    @Override
    public void actualizar(int id, Curso curso) {
        if (!cursoRepo.existsById(id)) {
            throw new IllegalArgumentException("El curso con ese id no existe");
        }
        if (curso.getNombreCurso() == null || curso.getNombreCurso().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del curso es obligatorio");
        }
        curso.setId(id);
        cursoRepo.save(curso);
    }

    @Override
    public void eliminar(int id) {
        if (!cursoRepo.existsById(id)) {
            throw new IllegalArgumentException("El curso con ese id no existe");
        }
        cursoRepo.deleteById(id);
    }
}
