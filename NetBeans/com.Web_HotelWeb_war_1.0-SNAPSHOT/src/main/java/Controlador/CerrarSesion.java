package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CerrarSesion", urlPatterns = {"/cerrarSesion"})
public class CerrarSesion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); // Invalida la sesión //
            System.out.println("Sesión cerrada exitosamente.");
        } else {
            System.out.println("No había sesión activa.");
        }
        response.sendRedirect("Principal.jsp"); // Redirige a la página principal //
    }

    @Override
    public String getServletInfo() {
        return "Servlet para cerrar sesión del usuario.";
    }
}