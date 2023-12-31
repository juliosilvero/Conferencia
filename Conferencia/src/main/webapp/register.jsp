<%--
  Created by IntelliJ IDEA.
  User: Veronica
  Date: 08/07/2023
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>

<link rel="stylesheet" href="./Integrador Boost/CSS/style.css">
<body style="background-color: midnightblue;">

<main>
    <head>
    <!-- NavBar Superior-->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <img src="./Integrador Boost/Img/codoacodo.png" height="50" alt="..">
        <a class="navbar-brand" href="index.jsp">Conf Bs As</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="#navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <div class="navTop">
                <div class="navbar-nav">
                    <a class="nav-link active" href="#">La Conferencia</a>
                    <a class="nav-link" href="#">Los Oradores</a>
                    <a class="nav-link" href="#">Lugar y Fecha</a>
                    <a class="nav-link" href="#">Conviertete en Orador</a>
                    <a class="nav-link" style="color: yellow" href="index.jsp">Volver al Inicio</a>

                </div>
            </div>
        </div>
    </nav>
    </head>

    <br>

    <section class="container" id="form-orador">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <div class="container d-flex">
                    <img src="./Integrador Boost/Img/codoacodo.png" alt="codo">
                    <h1 style="color: white; margin-top: auto; margin-bottom: 50px;">Registrarse</h1>
                </div>
                <form action="register" method="post">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" name="nombre" id="nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" name="apellido" id="apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email" id="mail" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="password" class="form-control" placeholder="Contraseña" aria-label="clave" name="clave" id="pass" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <div class="d-grid">
                                <input type="submit" class="btn btn-lg btn-form" value="Registrarse">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <div class="text-center">
        <p style="color: white">Ó</p>
    </div>
    <form class="container" action="login.jsp">
        <article class="text-center mt-4">
            <input type="submit" class="btn btn-lg btn-form" value="Iniciar Sesión">
        </article>
    </form>

</main>
<br>
<footer>
    <!--Barra de navegación Footer-->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-color">
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarNavFooter" aria-controls="navbarNavFooter" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavFooter">

            <div class="navFooter">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Preguntas <p>frecuentes</p> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contáctanos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Prensa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Conferencias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Términos y <p>condiciones</p> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Privacidad</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Estudiantes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</footer>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>