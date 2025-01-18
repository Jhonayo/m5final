package org.edutecno.servlets.gestion;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.edutecno.dao.UsuarioDao;
import org.edutecno.dao.impl.UsuarioImpl;
import org.edutecno.modelo.UsuarioEntity;

import java.io.IOException;

@WebServlet("/eliminarusuario")
public class EliminarUsuarioServlet extends HttpServlet {
  private final UsuarioDao usuarioDao = new UsuarioImpl();

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Long idUsuario = Long.valueOf((request.getParameter("id")));

    UsuarioEntity usuario = usuarioDao.buscarUsuarioPorId(idUsuario);
    request.setAttribute("usuario", usuario);

    request.getRequestDispatcher("eliminarusuario.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Long idUsuario = Long.valueOf((request.getParameter("id")));
    UsuarioEntity usuario = usuarioDao.buscarUsuarioPorId(idUsuario);
    String password = request.getParameter("password");

    if (usuario != null) {
      if (!usuarioDao.eliminarUsuario(idUsuario, password)) {
        request.getSession().setAttribute("modalTitulo", "Error de eliminacion");
        request.getSession().setAttribute("modalMensaje", "Su cuenta no se ha podido eliminar");
        request.getRequestDispatcher("eliminarusuario.jsp").forward(request, response);
      } else {

        request.getSession().setAttribute("modalTitulo", "Eliminacion de cuenta");
        request.getSession().setAttribute("modalMensaje", "Su cuenta ha sido eliminada.");
        response.sendRedirect("index.jsp");
      }
    }
  }
}
