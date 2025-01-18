package org.edutecno.servlets.gestion;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.edutecno.dao.UsuarioDao;
import org.edutecno.dao.impl.UsuarioImpl;
import org.edutecno.modelo.UsuarioEntity;

@WebServlet("/crearusuario")
public class CrearUsuarioServelt extends HttpServlet {
  private final UsuarioDao usuarioDao = new UsuarioImpl();

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("registro.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String nombre = request.getParameter("nombre");
    String userName = request.getParameter("userName");
    String email = request.getParameter("email");
    LocalDate fechaNacimiento = LocalDate.parse(request.getParameter("fechaNacimiento"));
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    if (password.equals(confirmPassword)) {
      UsuarioEntity usuarioExiste = usuarioDao.buscarUsuarioPorNombreUsuario(userName);
      if (usuarioExiste != null) {

        request.getSession().setAttribute("modalTitulo", "Error al crear usuario!");
        request.getSession().setAttribute("modalMensaje", "No es posible usar ese nombre de usuario ");
        request.getRequestDispatcher("registro.jsp").forward(request, response);
        return;
      }
      UsuarioEntity usuarioEntity = new UsuarioEntity();
      usuarioEntity.setNombre(nombre);
      usuarioEntity.setUserName(userName);
      usuarioEntity.setEmail(email);
      usuarioEntity.setFechaNacimiento(fechaNacimiento);
      usuarioEntity.setPassword(password);

      usuarioDao.agregarUsuario(usuarioEntity);

      request.getSession().setAttribute("modalTitulo", "Nuevo Usuario creado con Exito!");
      request.getSession().setAttribute("modalMensaje", "Bienvenido " + nombre);

      request.getRequestDispatcher("registro.jsp").forward(request, response);
    } else {

      request.setAttribute("nombre", nombre);
      request.setAttribute("userName", userName);
      request.setAttribute("email", email);

      request.getSession().setAttribute("modalTitulo", "Error! ");
      request.getSession().setAttribute("modalMensaje", "Las contraseñas deben coincidir");
      request.getRequestDispatcher("registro.jsp").forward(request, response);
    }

  }
}
