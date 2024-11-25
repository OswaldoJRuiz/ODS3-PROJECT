<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario"%>
<%
    String fechaCheckin = request.getParameter("fechaCheckin");
    String fechaCheckout = request.getParameter("fechaCheckout");
    int numHuespedes = Integer.parseInt(request.getParameter("numHuespedes"));
    int usuarioId = Integer.parseInt(request.getParameter("usuarioId"));
    
    double precioPorDia = 600.0;

    long diferenciaMilisegundos = java.sql.Date.valueOf(fechaCheckout).getTime() - java.sql.Date.valueOf(fechaCheckin).getTime();
    int numDias = (int) (diferenciaMilisegundos / (1000 * 60 * 60 * 24));

    double montoTotal = numDias * precioPorDia * numHuespedes;
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edición de Reserva</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Edición de Reserva</h2>

    <div class="mb-4">
        <h4>Fecha de Check-In: <%= fechaCheckin %></h4>
        <h4>Fecha de Check-Out: <%= fechaCheckout %></h4>
        <h4>Número de Huéspedes: <%= numHuespedes %></h4>
        <h4>Monto Total: $<%= montoTotal %></h4>
    </div>

    <form action="ConfirmarReservas" method="post">
        <input type="hidden" name="usuarioId" value="<%= usuarioId %>">
        <input type="hidden" name="fechaCheckin" value="<%= fechaCheckin %>">
        <input type="hidden" name="fechaCheckout" value="<%= fechaCheckout %>">
        <input type="hidden" name="numHuespedes" value="<%= numHuespedes %>">

        <div class="text-center">
            <button type="submit" class="btn btn-success w-100">Confirmar Reserva</button>
        </div>
    </form>

    <div class="text-center mt-4">
        <a href="Reservas.jsp" class="btn btn-secondary">Volver a editar</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>