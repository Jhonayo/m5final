<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="modal.jsp" %>
<html>
<head>
    <title>login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="./css/style.css" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
<nav class="navbar bg-primary nav-fill border-bottom ">
    <div class="container-fluid ">
        <div class="d-flex text-align-center" id="nav-logos-content">
            <div class="text-center" id="logo-content">
                <a class="navbar-brand " href="#"><img src="./images/chinese-zodiac-circle.webp" alt="Logo"
                                                       class="d-inline-block align-text-top" id="logo-nav"></a>
            </div>
            <a class="navbar-brand text-white" href="#">Horoscopo Chino</a>
        </div>
    </div>
</nav>
<div id="liveAlertPlaceholder"></div>
<div class="title-section d-flex justify-content-center mx-4 my-5">
    <h1>
        Inicio de sesión
    </h1>

</div>
<div class="mx-auto" style="width: 400px;">
    <form action="login" method="POST" class="px-4 py-3">
        <div class="mb-3">
            <label for="inputUserName" class="col-form-label">Nombre de usuario</label>
            <input type="text" class="form-control" name="userName" id="inputUserName" required>
        </div>
        <div class="mb-3">
            <label for="inputPassword" class="col-form-label">Contraseña</label>
            <input type="password" class="form-control" name="password" id="inputPassword" required>
        </div>
        <button type="submit" class="btn btn-primary">Ingresa</button>
    </form>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item px-4" href="crearusuario">¿Nuevo por aca? <br>Registrate</a>
</div>
<br/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="./js/scripts.js"></script>
</body>
</html>
