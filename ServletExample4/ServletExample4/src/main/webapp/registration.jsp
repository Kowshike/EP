<%@page import="javax.swing.WindowConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
</head>
<body>
<%
   Connection con = null;
   PreparedStatement ps = null;
   
   try {
      String username = request.getParameter("username");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String contact = request.getParameter("contact");
      
      Class.forName("com.mysql.cj.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "password@123");
      ps = con.prepareStatement("INSERT INTO data (username, email, password, contact) VALUES (?, ?, ?, ?)");
      ps.setString(1, username);
      ps.setString(2, email);
      ps.setString(3, password);
      ps.setString(4, contact);
      ps.executeUpdate();
      
      // Redirect to login page
      response.sendRedirect("login.jsp");
   } catch (Exception e) {
      out.println(e);
   } finally {
      try {
         if (ps != null)
            ps.close();
         if (con != null)
            con.close();
      } catch (SQLException ex) {
         out.println(ex);
      }
   }
%>
</body>
</html>
