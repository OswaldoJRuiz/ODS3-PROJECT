package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Validador extends HttpServlet {

    /*Este es el validador lo que hace es recibir la solicitud de el usuario y abre una sesion en caso de que sea correcto
    Si no es correcto te manda un error
    
    Esta conectado con el modelo por medio de los usuarios y usuariosDAO*/
    
    UsuarioDAO udao = new UsuarioDAO();
    Usuario us = new Usuario();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("Ingresar".equalsIgnoreCase(action)) {
            String correo = request.getParameter("correo");
            String contraseña = request.getParameter("password");

            us = udao.validar(correo, contraseña);
            if (us != null && us.getUsername() != null) {
                HttpSession session = request.getSession();
                session.setAttribute("usuario", us);

                response.sendRedirect("Principal.jsp");
            } else {
                request.setAttribute("error", "Credenciales incorrectas. Intente de nuevo.");
                request.getRequestDispatcher("InicioSesion.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("InicioSesion.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet para validar el inicio de sesión del usuario.";
    }
}