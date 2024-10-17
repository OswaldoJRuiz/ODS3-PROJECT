<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reservaciones</title>
</head>
<body>
    <h1>Ingrese la información necesaria para agendar</h1>
    
    <form action="RegistrarUsuarios" method="post">
        <label for="nombre">Nombre:</label><br>
        <input type="text" id="nombre" name="nombre" required><br><br>
        
        <label for="telefono">Número de Teléfono:</label><br>
        <input type="text" id="telefono" name="telefono" required><br><br>
        
        <label for="correo">Correo Electrónico:</label><br>
        <input type="email" id="correo" name="correo" required><br><br>
        
        <label for="fecha">Día de Reservación:</label><br>
        <input type="date" id="fecha" name="fecha" required><br><br>
        
        <input type="submit" value="Reservar">
    </form>

    <%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("RegistrarUsuarios");
    }
    %>
</body>
</html>