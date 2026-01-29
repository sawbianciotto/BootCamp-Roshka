package org.example.prestamolibrossp.usuario;

import java.util.List;

public interface UsuarioServiceInterface {
    UsuarioResponseDTO crearUsuario(UsuarioRequestDTO usuarioRequestDTO);
    void actualizarUsuarios(Long id, UsuarioRequestDTO usuarioRequestDTO);
    List<UsuarioResponseDTO> listarUsuarios();
    void eliminarUsuario(Long id);
}
