<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Courses</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <%
            String sql = "SELECT * FROM employee";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("id") + "</td>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getString("email") + "</td>");
                    out.println("<td>" + rs.getString("courses") + "</td>");
                    out.println("<td><a href='updateemployee.jsp?id=" + rs.getString("id") + "'>Edit</a></td>");
                    out.println("<td><a href='deleteemployee.jsp?id=" + rs.getString("id") + "'>Delete</a></td>");
                    out.println("</tr>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("error.jsp");
            }
        %>
    </tbody>
</table>