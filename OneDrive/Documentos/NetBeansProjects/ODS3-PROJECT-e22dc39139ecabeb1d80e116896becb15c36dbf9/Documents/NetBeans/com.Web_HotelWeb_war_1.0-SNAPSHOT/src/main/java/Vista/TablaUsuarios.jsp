<%@ page import="java.sql.*" %>
<%@ page import="Configuracion.Conexion" %>
<!DOCTYPE html>
<html>
    <head> <!--Este jsp era para comprobar la conexion con la BD, siquieren ver a los usuarios cambien desde el validador en vez de Principal por este-->
    <title>Tabla de Usuarios</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Lista de Usuarios</h2>

<%
    Conexion conexion = new Conexion();
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        con = conexion.getConexion(); // Obtiene la conexión
        stmt = con.createStatement();
        String sql = "SELECT * FROM usuarios";
        rs = stmt.executeQuery(sql);

        // Mostrar los datos en una tabla
        out.println("<table>");
        out.println("<tr><th>ID</th><th>Nombre de Usuario</th><th>Nombre</th><th>Teléfono</th><th>Correo</th></tr>");

        while (rs.next()) {
            int id = rs.getInt("id");
            String nombreUsuario = rs.getString("nombre_usuario");
            String nombre = rs.getString("nombre");
            String telefono = rs.getString("telefono");
            String correo = rs.getString("correo");

            out.println("<tr><td>" + id + "</td><td>" + nombreUsuario + "</td><td>" + nombre + "</td><td>" + telefono + "</td><td>" + correo + "</td></tr>");
        }

        out.println("</table>");

    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error al conectar a la base de datos: " + e.getMessage());
    } finally {
        // Cerrar los recursos
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            conexion.cerrarConexion(); // Cerrar la conexión
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

</body>
</html>