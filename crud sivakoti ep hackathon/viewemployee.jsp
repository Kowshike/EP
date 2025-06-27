<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Home Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    table th, table td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    table th {
      background-color: #f2f2f2;
    }

    table tr:hover {
      background-color: #f5f5f5;
    }

    .link {
      color: #007bff;
      text-decoration: none;
    }
  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
  <div class="container">
    <h1>Employee List</h1>

    <table>
      <tr>
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Employee Email</th>
        <th>Employee Course</th>
      </tr>

      <%  
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/project";
        String username = "root";
        String passwordDB = "password@123";

        try {
          // Establish database connection
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection(url, username, passwordDB);

          // Retrieve employee details from the database
          String sql = "SELECT id, name, email, courses FROM employee";
          Statement statement = conn.createStatement();
          ResultSet resultSet = statement.executeQuery(sql);

          while (resultSet.next()) {
            // Retrieve the values from the result set
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String courses = resultSet.getString("courses");

      %>
            <tr>
              <td><%= id %></td>
              <td><a href="addsucess.jsp?id=<%= id %>"><%= name %></a></td>
              <td><%= email %></td>
              <td><%= courses %></td>
            </tr>
      <%  
          }

          // Close database connection
          resultSet.close();
          statement.close();
          conn.close();
        } catch (Exception e) {
          e.printStackTrace();
          // Handle any exceptions here
        }
      %>
    </table>
  </div>
</body>
</html>
