package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* Este es como el validador para el registro de usuarios
pero los tuve que separar para que no haya confusion y con un nombre mas claro*/

public class RegistrarUsuarios extends HttpServlet {

    UsuarioDAO usuarioDAO = new UsuarioDAO(); // Instancia del DAO

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre_usuario = request.getParameter("username");
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("password"); // Cambia el nombre de la variable a "password" //

        // Verifica si el usuario o el correo ya existen //
        if (usuarioDAO.existeUsuario(correo, nombre_usuario)) {
            // Si el usuario o el correo ya existen los redirige de vuelta al registro con un mensaje de error //
            response.sendRedirect("CrearCuenta.jsp?error=usuario_existente");
            return; // Termina la ejecución del servlet
        }

        // Crear un nuevo objeto Usuario //
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setUsername(nombre_usuario);
        nuevoUsuario.setNombre(nombre);
        nuevoUsuario.setTelefono(telefono);
        nuevoUsuario.setCorreo(correo);
        nuevoUsuario.setContraseña(contraseña);

        // Llamar al método de registro en el DAO //
        boolean registrado = usuarioDAO.registrar(nuevoUsuario);

        // Verifica el resultado del registro //
        if (registrado) {
            response.sendRedirect("Principal.jsp"); // Redirige a la página principal después de registrar //
        } else {
            // Redirige a la página de creación de cuenta con un mensaje de error si falló el registro //
            response.sendRedirect("CrearCuenta.jsp?error=registro_fallido");
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet para registrar usuarios";
    }
}