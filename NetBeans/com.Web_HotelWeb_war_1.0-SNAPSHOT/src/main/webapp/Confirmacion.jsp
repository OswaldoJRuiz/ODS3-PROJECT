<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Modelo.Usuario" %>
<%
    Double montoTotal = (Double) request.getAttribute("montoTotal");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmación de Reserva</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 50px;
        }
        .btn-back {
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .btn-back:hover {
            background-color: #5a6268;
        }
    </style>

    <!-- Redirección automática después de 5 segundos -->
    <meta http-equiv="refresh" content="5;url=Controlador?action=Inicio">

</head>
<body>
    <div class="container">
        <div class="card shadow-sm">
            <div class="card-body">
                <h1 class="card-title text-center mb-4">Reserva Confirmada</h1>
                <p class="card-text text-center mb-4">
                    ¡Gracias por realizar la reserva con nosotros! A continuación, te mostramos los detalles de tu reserva.
                </p>

                <!-- Detalles de la reserva -->
                <div class="mb-4">
                    <h4 class="mb-3">Monto Total:</h4>
                    <p class="h3 text-success">
                        <% if (montoTotal != null) { %>
                            $<%= montoTotal %>
                        <% } else { %>
                            Monto no disponible
                        <% } %>
                    </p>
                </div>
                    
                <p class="text-center">Serás redirigido automáticamente a la página principal...</p>
            </div>
        </div>
    </div>

                    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>