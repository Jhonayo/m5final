<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="modal.jsp" %>
<html>
<head>
    <title>Registro</title>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
        <a class="nav-link border px-3 py-2 rounded-5  active" aria-current="page" href="logout" id="logout-btn"
           onclick="return confirm('¿Desea cerrar sesion?')">Logout</a>
    </div>
</nav>
<div class="mx-4 my-5">
    <h1 class="display-5 ms-4">
        Regístrate
    </h1>

</div>
<div class="mx-5 ">
    <form action="crearusuario" method="POST">
        <div class="row mb-3">
            <label for="inputNombre" class="col-sm-4 col-xl-2 col-form-label">Nombre</label>
            <div class="col-sm-8 col-xl-8">
                <input type="text" class="form-control" name="nombre" id="inputNombre" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputEmail" class="col-sm-4 col-xl-2 col-form-label">Correo electronico</label>
            <div class="col-sm-8 col-xl-8">
                <input type="email" class="form-control" name="email" id="InputEmail" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputUserName" class="col-sm-4 col-xl-2 col-form-label ">Nombre de usuario</label>
            <div class="col-sm-8 col-xl-8">
                <input type="text" class="form-control" name="userName" id="inputUserName" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputFechaNacimiento" class="col-sm-4 col-xl-2 col-form-label">Fecha de Nacimiento</label>
            <div class="col-sm-8 col-xl-8">
                <input type="date" class="form-control" name="fechaNacimiento" id="inputFechaNacimiento" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword" class="col-sm-4 col-xl-2 col-form-label">Contraseña</label>
            <div class="col-sm-8 col-xl-8">
                <input type="password" class="form-control" name="password" id="inputPassword" required>
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPasswordConfirmacion" class="col-sm-4 col-xl-2 col-form-label">Repita contraseña</label>
            <div class="col-sm-8 col-xl-8">
                <input type="password" class="form-control" name="confirmPassword" id="inputPasswordConfirmacion"
                       required>
            </div>
        </div>
        <div class="mt-5">
            <button type="submit" class="btn btn-primary me-2">Registrarse</button>
            <a href="index.jsp" class="btn btn-primary">Volver</a>
        </div>

    </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<script src="./js/validation.js"></script>
</body>
</html>
