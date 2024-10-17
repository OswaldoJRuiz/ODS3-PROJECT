<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reservaciones</title>
</head>
<body>
    <h1>Ingrese la informacion necesaria para agendar </h1>
    
    
    <form action="reservacion.jsp" method="post">
        
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
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String fecha = request.getParameter("fecha");

        // En esta parte quien selleve su compu que ingrese todo lo de la base de datos oara que funcionne plsss
        String url = "jdbc:mysql://localhost:3306/tu_base_de_datos";
        String user = "root";
        String password = "root";

                      Connection conn = null;
                         PreparedStatement pstmt = null;

        try {
                          Class.forName("com.mysql.cj.jdbc.Driver");
                          conn = DriverManager.getConnection(url, user, password);

                      String sql = "INSERT INTO reservaciones (nombre, telefono, correo, fecha) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, nombre);
            pstmt.setString(2, telefono);
            pstmt.setString(3, correo);
            pstmt.setString(4, fecha);
            pstmt.executeUpdate();

            out.println("<h2>Reservación realizada</h2>");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<h2>Error al realizar la reservación.</h2>");
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    }
    %>
</body>
</html>
