
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String id = request.getParameter("id");

    String sql = "DELETE FROM employee WHERE id = ?";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        int rowsDeleted = pstmt.executeUpdate();
        if (rowsDeleted > 0) {
            out.println("Employee deleted successfully!");
            out.println("<a href='viewemployee.jsp'>View Employees</a>");
        } else {
            out.println("Error deleting employee!");
            out.println("<a href='deletelanding.jsp'>Try Again</a>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp");
    }
%>