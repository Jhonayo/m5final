<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String modalTitulo = (String) session.getAttribute("modalTitulo");
    String modalMensaje = (String) session.getAttribute("modalMensaje");
%>

<script>
    window.onload = function () {
        var titulo = '<%= modalTitulo != null ? modalTitulo : "" %>';
        var mensaje = '<%= modalMensaje != null ? modalMensaje : "" %>';

        if (titulo.trim() !== "" && mensaje.trim() !== "") {
            document.getElementById('mensajeModalLabel').innerText = titulo;
            document.getElementById('mensajeModalBody').innerText = mensaje;
            var modal = new bootstrap.Modal(document.getElementById('mensajeModal'));
            modal.show();

            <% session.removeAttribute("modalTitulo"); %>
            <% session.removeAttribute("modalMensaje"); %>
        }
    };
</script>

<div class="modal fade" id="mensajeModal" tabindex="-1" aria-labelledby="mensajeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fw-bolder" id="mensajeModalLabel"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
            </div>
            <div class="modal-body text-center" id="mensajeModalBody">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

