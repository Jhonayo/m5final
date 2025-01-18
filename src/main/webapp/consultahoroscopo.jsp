<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<html>
<head>
  <title>Horóscopo Chino</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="./css/style.css" rel="stylesheet">
</head>
<body>
<nav class="navbar bg-primary nav-fill border-bottom ">
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
<div class="title-section d-flex justify-content-center mx-4 my-5">
  <h1>${usuario.nombre} Conoce tu horóscopo Chino</h1>
</div>
<div class="d-flex justify-content-center">
      <div class="my-5">
        <p class="fs-3">Tu animal es <strong>${signo.animal}</strong></p>
      </div>
</div>


<div class="container my-5">
  <a href="main.jsp" class="btn btn-primary">Volver</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
