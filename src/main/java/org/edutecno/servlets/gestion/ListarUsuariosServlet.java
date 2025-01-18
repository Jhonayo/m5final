package org.edutecno.servlets.gestion;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.edutecno.dao.HoroscopoDao;
import org.edutecno.dao.UsuarioDao;
import org.edutecno.dao.impl.HoroscopoImpl;
import org.edutecno.dao.impl.UsuarioImpl;
import org.edutecno.modelo.HoroscopoEntity;
import org.edutecno.modelo.UsuarioEntity;

import java.io.IOException;
import java.util.List;

@WebServlet("/listarusuarios")
public class ListarUsuariosServlet extends HttpServlet {
    private final UsuarioDao usuarioDao = new UsuarioImpl();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<UsuarioEntity> listaDeUsuarios = usuarioDao.listarUsuarios();

        request.setAttribute("usuarios", listaDeUsuarios);
        request.getRequestDispatcher("./listarusuarios.jsp").forward(request, response);
    }
}
