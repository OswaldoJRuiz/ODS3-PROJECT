<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario" %>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="Imagenes/Logo Hotel.png" alt="Logo del Hotel" height="40">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="Controlador?action=Inicio">Inicio</a>
                <!-- Aquí hemos agregado un evento onclick para mostrar la alerta si no hay usuario logueado -->
                <a class="nav-link" href="Controlador?action=Reservas" onclick="return checkLoginStatus()">Reservas</a>
                <a class="nav-link" href="Controlador?action=Acerca">Acerca de nosotros</a>
                <a class="nav-link" href="Controlador?action=Sucursales">Sucursales</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                <% if (usuario != null) { %>
                    <%= usuario.getUsername() %> <!-- Mostrar nombre de usuario -->
                <% } else { %>
                    Registrarte...
                <% } %>
            </button>
            <ul class="dropdown-menu dropdown-menu-end text-center">
                <% if (usuario != null) { %>
                    <li class="dropdown-item">
                        <img src="Imagenes/Usuario.png" alt="Usuario" width="60" class="d-block mx-auto mb-2"/>
                        <%= usuario.getCorreo() %> <!-- Mostrar correo del usuario -->
                    </li>
                    <li><a class="dropdown-item" href="<%= request.getContextPath() %>/cerrarSesion">Cerrar sesión</a></li>
                <% } else { %>
                    <li><a class="dropdown-item" href="InicioSesion.jsp">Iniciar sesión</a></li>
                    <li><a class="dropdown-item" href="Registrarse.jsp">Crear cuenta</a></li>
                <% } %>
            </ul>
        </div>
    </div>
</nav>

<script>
    function checkLoginStatus() {
        // Verificar si el usuario está logueado
        <% if (usuario == null) { %>
            // Si el usuario no está logueado, mostrar alerta
            alert("¡Por favor, inicia sesión para realizar una reserva!");
            return false; // Evita la navegación al enlace
        <% } else { %>
            // Si el usuario está logueado, permitir la navegación
            return true;
        <% } %>
    }
</script>

<style>
    .navbar {
        background-color: #f8f9fa !important;
        border-bottom: 2px solid #4a90e2 !important;
        padding: 0.8rem 1rem;
    }

    .navbar .nav-link, .navbar-brand img {
        color: #4a90e2 !important;
        font-weight: bold;
        font-size: 1.2rem;
    }

    .btn-secondary.dropdown-toggle {
        background-color: #4a90e2 !important;
        color: white !important;
        border: none !important;
    }

    .dropdown-item {
        font-family: 'Courier New', monospace;
        font-size: 1rem;
        color: #333333;
    }

    .dropdown-item:hover {
        background-color: #4a90e2;
        color: white;
    }

    body {
        margin-top: 80px; /* Evitar que el contenido quede debajo del navbar fijo */
    }
</style>