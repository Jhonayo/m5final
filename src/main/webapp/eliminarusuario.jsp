<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="modal.jsp" %>

<html>
<head>
    <title>Modificar Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link href="./css/style.css" rel="stylesheet">
</head>
<body>
<nav class="navbar bg-primary nav-fill  border-bottom ">
    <div class="container-fluid ">
        <div class="d-flex text-align-center" id="nav-logos-content">
            <div class="text-center" id="logo-content">
                <a class="navbar-brand " href="#"><img src="./images/chinese-zodiac-circle.webp" alt="Logo" class="d-inline-block align-text-top" id="logo-nav"></a>
            </div>
            <a class="navbar-brand text-white" href="#">Horoscopo Chino</a>
        </div>
        <a class="nav-link border px-3 py-2 rounded-5  active" aria-current="page" href="logout" id="logout-btn" onclick="return confirm('¿Desea cerrar sesion?')" >Logout</a>
    </div>
</nav>
<div class="title-section d-flex justify-content-start mx-4 my-5">
    <h1>
        Eliminar usuario
    </h1>

</div>
<div class="mx-5">
    <form action="eliminarusuario" method="POST">
        <input type="hidden" name="id" value="${usuario.id}">
        <div class="row mb-3">
            <label for="inputUserName" class="col-sm-4 col-xl-2 col-form-label ">Nombre de usuario</label>
            <div class="col-sm-8 col-xl-8">
                <input type="text" class="form-control" name="userName" id="inputUserName"
                       value="${usuario.userName}" readonly>
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
                <input type="password" class="form-control" name="confirmPassword"id="inputPasswordConfirmacion" required>
            </div>
        </div>
        <div class="mt-5">
        <button type="submit" class="btn btn-primary me-2" onclick="return confirm('¿Seguro desea eliminar usuario?')">
            Eliminar
        </button>
        <a href="main.jsp" class="btn btn-primary">Volver</a>
    </div>
    </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="./js/validation.js"></script>

</body>
</html>
