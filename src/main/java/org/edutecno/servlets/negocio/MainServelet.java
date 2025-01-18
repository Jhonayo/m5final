package org.edutecno.servlets.negocio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.edutecno.dao.UsuarioDao;
import org.edutecno.dao.impl.UsuarioImpl;
import org.edutecno.modelo.UsuarioEntity;

import java.io.IOException;

@WebServlet("/main")
public class MainServelet extends HttpServlet {
    private final UsuarioDao usuarioDao = new UsuarioImpl();


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Long idUsuario = Long.parseLong(request.getParameter("id"));
    UsuarioEntity usuario = usuarioDao.buscarUsuarioPorId(idUsuario);

    request.setAttribute("usuario", usuario);

    request.getRequestDispatcher("main.jsp").forward(request, response);
}

}
