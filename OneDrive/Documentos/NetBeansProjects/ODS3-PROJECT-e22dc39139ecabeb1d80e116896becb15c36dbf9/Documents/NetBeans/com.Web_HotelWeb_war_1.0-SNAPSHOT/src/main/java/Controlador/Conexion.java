package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// Aqui se tiene que conectar con la base de datos y despues usar los metodos en el controlador //

public class Conexion {
    private Connection con;
    private final String url = "jdbc:mysql://localhost:3306/HotelWeb";
    private final String user = "Alan";
    private final String password = "Kanibal1";

    // Método para obtener la conexión //
    public Connection getConexion() {
        try {
            // Carga el driver de MySQL //
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Driver no encontrado
        } catch (SQLException e) {
            e.printStackTrace(); // Error de conexión
        }
        return con;
    }

    // Método para cerrar la conexión
    public void cerrarConexion() {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Error al cerrar la conexión
            }
        }
    }
}