<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reservaciones</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../../web/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1>Ingrese la información necesaria para agendar</h1>
    
    <form action="RegistrarUsuarios" method="post">
        <label for="nombre">Nombre:</label><br>
        <input type="text" id="nombre" name="nombre" required><br><br>
        
            <div class="text-right">
            <input type="button" class="btn btn-succes" value="Guardar">
            </div>
        
        <label for="telefono">Número de Teléfono:</label><br>
        <input type="text" id="telefono" name="telefono" required><br><br>
        
            <div class="text-right">
            <input type="button" class="btn btn-succes" value="Guardar">
            </div>
            
        <label for="correo">Correo Electrónico:</label><br>
        <input type="email" id="correo" name="correo" required><br><br>
        
            <div class="text-right">
            <input type="button" class="btn btn-succes" value="Guardar">
            </div>
            
        <label for="fecha">Día de Reservación:</label><br>
        <input type="date" id="fecha" name="fecha" required><br><br>
        
            <div class="text-right">
            <input type="button" class="btn btn-succes" value="Guardar">
            </div>
            
        
        <div class="text-right">
            <input type="button" class="btn btn-succes" value="Reservar">
            <input type="button" class="btn btn-primary" value="Editar datos Datos">
        </div>
        
    </form>

    <%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("RegistrarUsuarios");
    }
    %>
    
    <script src="js/jquery-3.7.1"> </script>
   
    <script src="js/bootstrap.min"> </script>
 
    
    
</body>
</html>