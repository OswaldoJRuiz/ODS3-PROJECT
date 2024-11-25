<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Página Principal</title>
        <style>
            /* Diseño de la página principal */
            body {
                background-image: url('Imagenes/gdl.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                color: white;
                font-family: Arial, sans-serif;
            }
            h1 {
                font-size: 3rem;
                text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
                margin-top: 150px;
            }
            .container {
                text-align: center;
                margin-top: 30px;
            }
            .btn-primary {
                font-size: 1.2rem;
                padding: 10px 20px;
                margin-top: 20px;
                background-color: #4a90e2;
                border-color: #4a90e2;
            }
            .btn-primary:hover {
                background-color: #357ab7;
                border-color: #357ab7;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenido a Nuestra Página de Hoteles</h1>
            <p>Encuentra el lugar perfecto para tu estadía con nosotros.</p>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
    </body>
</html>