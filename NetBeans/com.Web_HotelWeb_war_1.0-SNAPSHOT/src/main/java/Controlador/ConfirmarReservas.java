package Controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ConfirmarReservas")
public class ConfirmarReservas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int usuarioId = Integer.parseInt(request.getParameter("usuarioId"));
        String fechaCheckin = request.getParameter("fechaCheckin");
        String fechaCheckout = request.getParameter("fechaCheckout");
        int numHuespedes = Integer.parseInt(request.getParameter("numHuespedes"));
        
        // Precio por día por huésped //
        double precioPorDia = 600.0;

        // Aqui se calcula la cantidad de días entre check-in y check-out //
        long diferenciaMilisegundos = java.sql.Date.valueOf(fechaCheckout).getTime() - java.sql.Date.valueOf(fechaCheckin).getTime();
        int numDias = (int) (diferenciaMilisegundos / (1000 * 60 * 60 * 24));
        if (numDias <= 0) {
            request.setAttribute("error", "La fecha de check-in debe ser anterior a la fecha de check-out.");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
            return;
        }
        
        double montoTotal = numDias * precioPorDia * numHuespedes;

        // Aqui guarda la reserva en la base de datos //
        Conexion conexion = new Conexion();
        try (Connection con = conexion.getConexion()) {
            String sql = "INSERT INTO reservas (usuario_id, fecha_reserva, fecha_checkin, fecha_checkout, num_huespedes, monto) "
                       + "VALUES (?, CURRENT_DATE, ?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, usuarioId);
                ps.setString(2, fechaCheckin);
                ps.setString(3, fechaCheckout);
                ps.setInt(4, numHuespedes);
                ps.setDouble(5, montoTotal);
                ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error al realizar la reserva. Intente nuevamente más tarde.");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
            return;
        }
        
        request.setAttribute("montoTotal", montoTotal);
        request.getRequestDispatcher("Confirmacion.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}