<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario" %>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Página Principal</title>
        <style>
            body {
                background-image: url("Imagenes/gdl.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                background-attachment: fixed;
                color: #f8f9fa;
            }
            h1 {
                color: #ffffff;
                font-family: 'Arial', sans-serif;
                font-size: 3rem;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
                text-align: center;
                margin-top: 2rem;
            }
            .navbar .nav-link, .navbar-brand {
                color: #4a90e2 !important;
                font-weight: bold;
                font-size: 1.2rem;
            }
            .btn-secondary.dropdown-toggle {
                background-color: #4a90e2;
                color: white;
                border: none;
            }
            .dropdown-item {
                font-family: 'Courier New', monospace;
                font-size: 1rem;
                color: #333333;
            }
        </style>
    </head>
    <body>
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
                        <a class="nav-link" href="Controlador?action=Sucursales">Sucursales</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <% if (usuario != null) { %>
                            <%= usuario.getUsername() %> 
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

        <h1 class="text-center mt-4">Bienvenido a Nuestra Página de Hoteles</h1>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>     
    </body>
</html>