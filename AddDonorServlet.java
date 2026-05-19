package Servletclasses;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.DatabaseConnection;

@WebServlet("/addDonor")
public class AddDonorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // Adding serialVersionUID

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        double weight = Double.parseDouble(request.getParameter("weight"));
        String bloodGroup = request.getParameter("group");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO donors (name, age, weight, blood_group, phone, address) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setInt(2, age);
            stmt.setDouble(3, weight);  // Ensure you're using setDouble for weight
            stmt.setString(4, bloodGroup);
            stmt.setString(5, phone);
            stmt.setString(6, address);
            stmt.executeUpdate();
            response.sendRedirect("viewDonors.jsp");
        } catch (Exception e) {
            e.printStackTrace(); // Make sure to log exceptions for debugging
            request.setAttribute("errorMessage", "An error occurred while adding the donor."); // Optional error message
            request.getRequestDispatcher("addDonor.jsp").forward(request, response); // Forward back to the form with an error
        }
    }
}
