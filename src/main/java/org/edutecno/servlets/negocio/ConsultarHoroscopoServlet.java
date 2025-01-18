package org.edutecno.servlets.negocio;

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

@WebServlet("/consultahoroscopo")
public class ConsultarHoroscopoServlet extends HttpServlet {
    private final UsuarioDao usuarioDao = new UsuarioImpl();
    private final HoroscopoDao horoscopoDao = new HoroscopoImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long idUsuario = Long.parseLong(request.getParameter("id"));
        UsuarioEntity usuario = usuarioDao.buscarUsuarioPorId(idUsuario);
        HoroscopoEntity signo = horoscopoDao.obtenerSignoPorFecha(usuario.getFechaNacimiento());
        request.setAttribute("signo", signo);
        request.setAttribute("usuario", usuario);


        request.getRequestDispatcher("/consultahoroscopo.jsp").forward(request, response);
    }
} 
