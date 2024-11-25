<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario"%>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("InicioSesion.jsp");
        return;
    }
    
    int usuarioId = usuario.getId();
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservas - Hotel en Guadalajara</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <!-- Botón para regresar al inicio -->
        <div class="d-flex justify-content-start mb-4">
            <a href="Controlador?action=Inicio" class="btn btn-secondary">
                <i class="bi bi-arrow-left"></i> Volver al Inicio
            </a>
        </div>

        <h2 class="text-center mb-4">Reservas en Guadalajara</h2>
        <p class="text-center">Reserve su habitación en nuestro hotel ubicado en el corazón de Guadalajara.</p>

        <!-- Formulario de reservas -->
        <form action="EdicionReserva.jsp" method="post" class="p-4 border rounded shadow-sm">
            <input type="hidden" name="usuarioId" value="<%= usuarioId %>"> <!-- Campo oculto para el ID del usuario -->
            <div class="mb-3">
                <label for="checkIn" class="form-label">Fecha de Check-In</label>
                <input type="date" id="checkIn" name="fechaCheckin" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="checkOut" class="form-label">Fecha de Check-Out</label>
                <input type="date" id="checkOut" name="fechaCheckout" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="numGuests" class="form-label">Número de Huéspedes</label>
                <select id="numGuests" name="numHuespedes" class="form-control">
                    <option value="1">1 Huésped</option>
                    <option value="2">2 Huéspedes</option>
                    <option value="3">3 Huéspedes</option>
                    <option value="4">4 Huéspedes</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary w-100">Ver Detalles de la Reserva</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>