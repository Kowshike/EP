<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
   Connection conn = null;
   try {
      // Retrieve form data
      int employeeId = Integer.parseInt(request.getParameter("id"));
      String name = request.getParameter("usrname");
      String fatherName = request.getParameter("fathername");
      String motherName = request.getParameter("mothername");
      String email = request.getParameter("email");
      String gender = request.getParameter("gender");
      String password = request.getParameter("password");
      String address = request.getParameter("address");
      String city = request.getParameter("city");
      String zipCode = request.getParameter("zipcode");
      String phoneNo = request.getParameter("phoneno");
      String courses = request.getParameter("courses");

      // Database connection parameters
      String url = "jdbc:mysql://localhost:3306/project";
      String username = "root";
      String passwordDB = "password@123";

      // Establish database connection
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection(url, username, passwordDB);

      // Create and execute SQL statement
      String sql = "UPDATE employee SET name=?, father_name=?, mother_name=?, email=?, gender=?, password=?, address=?, city=?, zip_code=?, phone_no=?, courses=? WHERE id=?";
      PreparedStatement statement = conn.prepareStatement(sql);
      statement.setString(1, name);
      statement.setString(2, fatherName);
      statement.setString(3, motherName);
      statement.setString(4, email);
      statement.setString(5, gender);
      statement.setString(6, password);
      statement.setString(7, address);
      statement.setString(8, city);
      statement.setString(9, zipCode);
      statement.setString(10, phoneNo);
      statement.setString(11, courses);
      statement.setInt(12, employeeId);
      statement.executeUpdate();

      response.sendRedirect("updatesuccess.jsp"); // Redirect to a success page
   } catch (Exception e) {
      e.printStackTrace();
      // Handle database connection or query error
      response.sendRedirect("error.jsp"); // Redirect to an error page
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
