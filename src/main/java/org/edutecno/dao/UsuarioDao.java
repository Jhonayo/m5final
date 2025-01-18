package org.edutecno.dao;

import org.edutecno.modelo.UsuarioEntity;

import java.util.List;

public interface UsuarioDao {

  void agregarUsuario(UsuarioEntity usuario);

  List<UsuarioEntity> listarUsuarios();

  void actualizarUsuario(UsuarioEntity usuario);

  Boolean eliminarUsuario(Long id, String password);

  UsuarioEntity buscarUsuarioPorId(Long id);

  UsuarioEntity login(String username, String password);

  UsuarioEntity buscarUsuarioPorNombreUsuario(String username);
}
