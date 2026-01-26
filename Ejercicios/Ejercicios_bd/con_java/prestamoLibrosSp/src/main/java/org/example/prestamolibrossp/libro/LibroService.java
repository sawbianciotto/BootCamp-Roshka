package org.example.prestamolibrossp.libro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LibroService implements LibroServiceInterface {
    @Autowired
    private LibroRepo libroRepo;

    @Override
    public List<Libro> obtenerTodas() {
        return libroRepo.findAll();
    }

    @Override
    public void crear(Libro libro) {
        if (libro.getLibroNombre() == null || libro.getLibroNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del libro es obligatorio");
        }
        if (libro.getIdEditorial() == null || libro.getIdEditorial().getId() == null) {
            throw new IllegalArgumentException("El id de la editorial es obligatorio");
        }
        libroRepo.save(libro);
    }

    @Override
    public void actualizar(int id, Libro libro) {
        if (!libroRepo.existsById(id)) {
            throw new IllegalArgumentException("El libro con ese id no existe");
        }
        if (libro.getLibroNombre() == null || libro.getLibroNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre del libro es obligatorio");
        }
        if (libro.getIdEditorial() == null || libro.getIdEditorial().getId() == null) {
            throw new IllegalArgumentException("El id de la editorial es obligatorio");
        }
        libro.setId(id);
        libroRepo.save(libro);
    }

    @Override
    public void eliminar(int id) {
        if (!libroRepo.existsById(id)) {
            throw new IllegalArgumentException("El libro con ese id no existe");
        }
        libroRepo.deleteById(id);
    }
}
