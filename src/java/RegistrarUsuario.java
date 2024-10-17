/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
@WebServlet(urlPatterns = {"/RegistrarUsuario"})
public class RegistrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         // Recoger los datos del formulario
        String correo = request.getParameter("correo");
        String tipo_usuario = request.getParameter("tipo_usuario");
        
        // Conectar a la base de datos
        String jdbcUrl = "jdbc:mysql://localhost:3306/hotel_reservas";
        String dbUser = "localhost";  // Cambia esto si tu usuario de MySQL es diferente
        String dbPassword = "12345";  // Cambia esto por tu contraseña
        
        try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Crear la conexión a la base de datos
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            
            // Crear el query para insertar el usuario
            String query = "INSERT INTO usuario (Correo, Tipo_usuario) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, correo);
            stmt.setString(2, tipo_usuario);
            
            // Ejecutar la inserción
            int rowsInserted = stmt.executeUpdate();
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            
            if (rowsInserted > 0) {
                out.println("<h1>Usuario registrado exitosamente</h1>");
            } else {
                out.println("<h1>Error al registrar el usuario</h1>");
            }
            
            // Cerrar la conexión
            stmt.close();
            conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

      
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
