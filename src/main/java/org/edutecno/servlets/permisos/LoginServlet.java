package org.edutecno.servlets.permisos;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.edutecno.dao.UsuarioDao;
import org.edutecno.dao.impl.UsuarioImpl;
import org.edutecno.modelo.UsuarioEntity;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private final UsuarioDao usuarioDao = new UsuarioImpl();

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("userName");
        String password = request.getParameter("password");

        UsuarioEntity usuario = usuarioDao.login(username, password);

        if (usuario == null) {
            response.sendRedirect("index.jsp");
        } else {
            request.getSession().setAttribute("usuario", usuario);
            request.getSession().setAttribute("modalTitulo", "Inicio de Sesión Exitoso");
            request.getSession().setAttribute("modalMensaje", "Bienvenido al sistema.");
            response.sendRedirect("main.jsp");
        }
    }
}


