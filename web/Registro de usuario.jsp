<%-- 
    Document   : Registro de usuario
    Created on : 16 oct 2024, 18:28:49
    Author     : pc
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>
    <h1>Registro de Usuario</h1>
    <form action="RegistrarUsuario" method="post">
        Correo: <input type="email" name="correo" required/><br/>
        Tipo de Usuario: <input type="text" name="tipo_usuario" required/><br/>
        <input type="submit" value="Registrar"/>
    </form>
</body>
</html>
