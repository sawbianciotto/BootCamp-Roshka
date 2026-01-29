package org.example.prestamolibrossp.usuario;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class UsuarioService implements UsuarioServiceInterface {

    @Autowired
    private UsuarioRepo usuarioRepo;

        @Autowired
        private PasswordEncoder passwordEncoder;

    @Override
    public UsuarioResponseDTO crearUsuario(UsuarioRequestDTO usuarioRequestDTO) {
        if(usuarioRequestDTO.getUsername() == null){
            throw new IllegalArgumentException("el username es obligatorio");
        }
        if(usuarioRequestDTO.getPassword() == null){
            throw new IllegalArgumentException("el password es obligatorio");
        }
        Usuario usuario = new Usuario();
        usuario.setUsername(usuarioRequestDTO.getUsername());
        usuario.setPassword(passwordEncoder.encode(usuarioRequestDTO.getPassword()));
        Usuario guardado = usuarioRepo.save(usuario);
        return new UsuarioResponseDTO(guardado.getId(), guardado.getUsername());
    }

    @Override
    public List<UsuarioResponseDTO> listarUsuarios() {
        return usuarioRepo.findAll().stream()
            .map(u -> new UsuarioResponseDTO(u.getId(), u.getUsername()))
            .collect(Collectors.toList());
    }

    @Override
    public void eliminarUsuario(Long id) {
        usuarioRepo.findById(id).orElseThrow(() -> new RuntimeException("Usuario no encontrado"));
        usuarioRepo.deleteById(id);
    }

    @Override
    public void actualizarUsuarios(Long id, UsuarioRequestDTO usuarioRequestDTO){
        Usuario usuario = usuarioRepo.findById(id).orElseThrow(() -> new RuntimeException("Usuario no encontrado"));
        if(usuarioRequestDTO.getUsername() == null){
            throw new IllegalArgumentException("el username es obligatorio");
        }
        if(usuarioRequestDTO.getPassword() == null){
            throw new IllegalArgumentException("el password es obligatorio");
        }
        usuario.setUsername(usuarioRequestDTO.getUsername());
        usuario.setPassword(passwordEncoder.encode(usuarioRequestDTO.getPassword()));
        usuarioRepo.save(usuario);

    }
}
