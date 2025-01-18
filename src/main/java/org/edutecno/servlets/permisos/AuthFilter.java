package org.edutecno.servlets.permisos;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/*")
public class AuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String path = req.getServletPath();

        String[] urlsPublicas = {"/login", "/index.jsp", "/registro.jsp", "/crearusuario", "/logout"};

        for (String url : urlsPublicas) {
            if (path.equals(url)) {
                filterChain.doFilter(request, response);
                return;
            }
        }

        Object usuario = req.getSession().getAttribute("usuario");
        if (usuario != null) {
            filterChain.doFilter(request, response);
            return;
        }
        res.sendRedirect(req.getContextPath() + "/index.jsp");

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
