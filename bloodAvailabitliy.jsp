<%@ page import="utils.DatabaseConnection" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Blood Availability</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"> <!-- Add CSS file path if any -->
</head>
<body>
    <h1>Blood Availability</h1>
    <table border="1">
        <tr>
            <th>Hospital</th>
            <th>O+</th>
            <th>O-</th>
            <th>A+</th>
            <th>A-</th>
            <th>A1+</th>
            <th>A1-</th>
            <th>B+</th>
            <th>B-</th>
            <th>AB+</th>
            <th>AB-</th>
        </tr>
        <%
            String sql = "SELECT * FROM hospitals";
            try {
                Connection connection = DatabaseConnection.getConnection();
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("hospital_name") + "</td>");
                    out.println("<td>" + rs.getInt("o_positive") + "</td>");
                    out.println("<td>" + rs.getInt("o_negative") + "</td>");
                    out.println("<td>" + rs.getInt("a_positive") + "</td>");
                    out.println("<td>" + rs.getInt("a_negative") + "</td>");
                    out.println("<td>" + rs.getInt("a1_positive") + "</td>");
                    out.println("<td>" + rs.getInt("a1_negative") + "</td>");
                    out.println("<td>" + rs.getInt("b_positive") + "</td>");
                    out.println("<td>" + rs.getInt("b_negative") + "</td>");
                    out.println("<td>" + rs.getInt("ab_positive") + "</td>");
                    out.println("<td>" + rs.getInt("ab_negative") + "</td>");
                    out.println("</tr>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<tr><td colspan='11'>Error fetching data.</td></tr>");
            }
        %>
    </table>
    <br>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
