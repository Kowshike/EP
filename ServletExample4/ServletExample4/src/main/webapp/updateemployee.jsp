<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String courses = request.getParameter("courses");

    String sql = "UPDATE employee SET name = ?, email = ?, courses = ? WHERE id = ?";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, courses);
        pstmt.setString(4, id);
        pstmt.executeUpdate();
        response.sendRedirect("updatesuccess.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp");
    }
%>