package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/* Si se pregunta que es DAO significa "Data Access Object" (Objeto de Acceso a Datos) 
y se utiliza para separar la lógica de negocio de la lógica de acceso a datos. */

public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    // Método en UsuarioDAO para validar credenciales //
public Usuario validar(String correo, String contraseña) {
    String sql = "SELECT * FROM usuarios WHERE correo = ? AND contraseña = ?";
    Usuario usuario = null;

    // Se genera la conexion con la base de datos y se abre la consulta con la base de datos //

    
    try (Connection con = cn.getConexion(); PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setString(1, correo);
        ps.setString(2, contraseña);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setUsername(rs.getString("nombre_usuario"));
            usuario.setCorreo(rs.getString("correo"));
            usuario.setNombre(rs.getString("nombre"));
            usuario.setTelefono(rs.getString("telefono"));
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return usuario;
}

    // Método para registrar un nuevo usuario
    public boolean registrar(Usuario usuario) {
        String sql = "INSERT INTO usuarios (nombre_usuario, nombre, telefono, correo, contraseña) VALUES (?, ?, ?, ?, ?)";

        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getUsername());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getTelefono());
            ps.setString(4, usuario.getCorreo());
            ps.setString(5, usuario.getContraseña()); // Considera usar un hash para la contraseña

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Devuelve true si la inserción fue exitosa
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir el error en caso de fallo
            return false; // Devuelve false en caso de error
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Método para verificar si un usuario ya existe
    public boolean existeUsuario(String correo, String username) {
        String sql = "SELECT * FROM usuarios WHERE correo = ? OR nombre_usuario = ?";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, username);
            rs = ps.executeQuery();

            return rs.next(); // Devuelve true si hay al menos un registro
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir el error en caso de fallo
            return false; // Devuelve false en caso de error
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}