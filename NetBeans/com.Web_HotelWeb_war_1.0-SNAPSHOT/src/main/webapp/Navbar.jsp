<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario" %>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Hoteles</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="Controlador?action=Inicio">Inicio</a>
                <a class="nav-link" href="Controlador?action=Reservas">Reservas</a>
                <a class="nav-link" href="Controlador?action=Acerca">Acerca de nosotros</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                <% if (usuario != null) { %>
                    <%= usuario.getUsername() %> <!-- Mostrar el nombre del usuario logueado -->
                <% } else { %>
                    Registrarte...
                <% } %>
            </button>
            <ul class="dropdown-menu dropdown-menu-end text-center">
                <% if (usuario != null) { %>
                    <li class="dropdown-item">
                        <img src="Imagenes/Usuario.png" alt="Usuario" width="60" class="d-block mx-auto mb-2"/>
                        <%= usuario.getCorreo() %>
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