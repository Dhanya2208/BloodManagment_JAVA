<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Donor</title>
</head>
<body>
    <h1>Add a New Donor</h1>
    <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
            out.println("<p style='color:red;'>" + errorMessage + "</p>");
        }
    %>
    <form action="addDonor" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required><br><br>
        
        <label for="age">Age:</label>
        <input type="number" name="age" required><br><br>
        
        <label for="weight">Weight:</label>
        <input type="number" name="weight" required><br><br>
        
        <label for="group">Blood Group:</label>
        <input type="text" name="group" required><br><br>
        
        <label for="phone">Phone:</label>
        <input type="text" name="phone" required><br><br>
        
        <label for="address">Address:</label>
        <textarea name="address" required></textarea><br><br>
        
        <button type="submit">Add Donor</button>
    </form>
</body>
</html>
