package org.edutecno.servlets.gestion;

import java.io.IOException;
import java.time.LocalDate;

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

@WebServlet("/modificarusuario")
public class ModificarUsuarioServlet extends HttpServlet {
    private final UsuarioDao usuarioDao = new UsuarioImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long idUsuario = Long.parseLong(request.getParameter("id"));
        UsuarioEntity usuario = usuarioDao.buscarUsuarioPorId(idUsuario);

        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("modificarusuario.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        LocalDate fechaNacimiento = LocalDate.parse(request.getParameter("fechaNacimiento"));
        String password = request.getParameter("password");

        UsuarioEntity usuarioEntity = new UsuarioEntity();
        usuarioEntity.setId(id);
        usuarioEntity.setNombre(nombre);
        usuarioEntity.setUserName(userName);
        usuarioEntity.setEmail(email);
        usuarioEntity.setFechaNacimiento(fechaNacimiento);
        usuarioEntity.setPassword(password);

        usuarioDao.actualizarUsuario(usuarioEntity);
        UsuarioEntity usuarioActualizado = usuarioDao.buscarUsuarioPorId(id);

        request.setAttribute("usuario", usuarioActualizado);
        request.getSession().setAttribute("modalTitulo", "Usuario modificado");
        request.getSession().setAttribute("modalMensaje", "Usuario modificado con exito");
        request.getRequestDispatcher("modificarusuario.jsp").forward(request, response);


    }

}
