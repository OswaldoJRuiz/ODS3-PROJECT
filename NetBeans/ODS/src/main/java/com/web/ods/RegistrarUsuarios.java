package com.web.ods;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistrarUsuarios", urlPatterns = {"/RegistrarUsuarios"})
public class RegistrarUsuarios extends HttpServlet {

    private final String url = "jdbc:mysql://localhost:3306/ODS";
    private final String user = "Alan";
    private final String password = "Kanibal1";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Mostrar la lista de reservaciones
            out.println("<h2>Lista de Reservaciones</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Nombre</th><th>Teléfono</th><th>Correo</th><th>Fecha</th></tr>");
            
            try (Connection conn = DriverManager.getConnection(url, user, password);
                 PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM reservaciones");
                 ResultSet rs = pstmt.executeQuery()) {
                
                while (rs.next()) {
                    out.println("<tr><td>" + rs.getInt("id") + "</td>");
                    out.println("<td>" + rs.getString("nombre") + "</td>");
                    out.println("<td>" + rs.getString("telefono") + "</td>");
                    out.println("<td>" + rs.getString("correo") + "</td>");
                    out.println("<td>" + rs.getDate("fecha") + "</td></tr>");
                }
            } catch (SQLException e) {
                out.println("<h3>Error al obtener la lista de reservaciones: " + e.getMessage() + "</h3>");
            }
            out.println("</table>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String fecha = request.getParameter("fecha");

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement pstmt = conn.prepareStatement("INSERT INTO reservaciones (nombre, telefono, correo, fecha) VALUES (?, ?, ?, ?)")) {
             
            Class.forName("com.mysql.cj.jdbc.Driver");

            pstmt.setString(1, nombre);
            pstmt.setString(2, telefono);
            pstmt.setString(3, correo);
            pstmt.setString(4, fecha);
            pstmt.executeUpdate();

            System.out.println("Reservación realizada con éxito");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet para registrar usuarios y mostrar reservaciones";
    }
}