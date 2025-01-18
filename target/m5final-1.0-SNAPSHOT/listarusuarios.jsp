<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <link href="./css/style.css" rel="stylesheet">
</head>

<body>
<nav class="navbar bg-primary nav-fill border-bottom ">
    <div class="container-fluid ">
        <div class="d-flex text-align-center" id="nav-logos-content">
            <div class="text-center" id="logo-content">
                <a class="navbar-brand " href="#"><img src="./images/chinese-zodiac-circle.webp" alt="Logo"
                                                       class="d-inline-block align-text-top" id="logo-nav"></a>
            </div>
            <a class="navbar-brand text-white" href="#">Horoscopo Chino</a>
        </div>
        <a class="nav-link border px-3 py-2 rounded-5  active" aria-current="page" href="logout"
           id="logout-btn" onclick="return confirm('¿Desea cerrar sesion?')">Logout</a>
    </div>
</nav>
<div class="title-section d-flex justify-content-start mx-4 my-5">
    <h1>
        Listar usuarios
    </h1>
</div>
<div class="container-fluid d-flex justify-content-center">
    <table class="table table-info table-striped table-hover mx-4 mt-2">
        <thead>
        <tr>
            <th>N°</th>
            <th>NOMBRE</th>
            <th>USERNAME</th>
            <th>EMAIL</th>
            <th>FECHA_NACIMIENTO</th>
            <th>PASSWORD</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="usuario" items="${usuarios}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${usuario.nombre}</td>
                <td>${usuario.userName}</td>
                <td>${usuario.email}</td>
                <td>${usuario.fechaNacimiento}</td>
                <td>${usuario.password}</td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
</div>
<div class="mt-4 mx-4">
    <a href="main.jsp" class="btn btn-primary">Volver</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>