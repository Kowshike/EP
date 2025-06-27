<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
    <style>
        /* Add your CSS styles here or link to an external CSS file if needed */
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <div class="container">
        <h1>Delete Employee</h1>
        <%
            // Retrieve the employee ID from the request
            String employeeId = request.getParameter("id");

            // Database connection parameters
            String url = "jdbc:mysql://localhost:3306/project"; // Replace with your database URL
            String username = "root"; // Replace with your database username
            String passwordDB = "password@123"; // Replace with your database password

            Connection conn = null;
            try {
                // Establish database connection
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, passwordDB);

                // Create and execute SQL statement to delete the employee
                String deleteQuery = "DELETE FROM employee WHERE id = ?";
                PreparedStatement pstmt = conn.prepareStatement(deleteQuery);
                pstmt.setInt(1, Integer.parseInt(employeeId));
                int rowsDeleted = pstmt.executeUpdate();

                if (rowsDeleted > 0) {
                    %>
                    <p>Employee with ID <%= employeeId %> has been deleted successfully.</p>
                    <a href="home.jsp">View Employees</a> <!-- Replace "view_employees.jsp" with the page where you list employees -->
                    <%
                } else {
                    %>
                    <p>Employee with ID <%= employeeId %> not found or could not be deleted.</p>
                    <a href="deletelanding.jsp">Back to Delete Page</a> <!-- Replace "landing_page.jsp" with the path to your delete landing page -->
                    <%
                }

                pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
                // Handle database connection or query error
                response.sendRedirect("deler.jsp"); // Redirect to an error page
            } finally {
                // Close database connection
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </div>
</body>
</html>
