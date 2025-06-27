<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String courses = request.getParameter("courses");

    String sql = "INSERT INTO employee (name, email, courses) VALUES (?, ?, ?)";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, courses);
        pstmt.executeUpdate();
        response.sendRedirect("addsuccess.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("login.jsp");
    }
%>