package org.example.prestamolibrossp.editorial;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EditorialService implements EditorialServiceInterface {
    @Autowired
    private EditorialRepo editorialRepo;

    @Override
    public List<Editorial> obtenerTodas() {
        return editorialRepo.findAll();
    }

    @Override
    public void crear(Editorial editorial) {
        if (editorial.getEditorialNombre() == null || editorial.getEditorialNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre de la editorial es obligatorio");
        }
        editorialRepo.save(editorial);
    }

    @Override
    public void actualizar(int id, Editorial editorial) {
        if (!editorialRepo.existsById(id)) {
            throw new IllegalArgumentException("La editorial con ese id no existe");
        }
        if (editorial.getEditorialNombre() == null || editorial.getEditorialNombre().trim().isEmpty()) {
            throw new IllegalArgumentException("El nombre de la editorial es obligatorio");
        }
        editorial.setId(id);
        editorialRepo.save(editorial);
    }

    @Override
    public void eliminar(int id) {
        if (!editorialRepo.existsById(id)) {
            throw new IllegalArgumentException("La editorial con ese id no existe");
        }
        editorialRepo.deleteById(id);
    }
}
