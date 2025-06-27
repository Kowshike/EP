<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Successful</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    p {
      margin-bottom: 10px;
      color: #555;
    }
    
    .link {
      text-align: center;
      margin-top: 20px;
    }
    
    .link a {
      color: #EE9A25;
      text-decoration: none;
    }
    
    .link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
  <div class="container">
    <h1>Registration Successful!</h1>

    <%  
      // Database connection parameters
      String url = "jdbc:mysql://localhost:3306/project";
      String username = "root";
      String passwordDB = "password@123";

      try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, passwordDB);

        // Retrieve the last inserted record from the database
        String sql = "SELECT * FROM employee ORDER BY id DESC LIMIT 1";
        Statement statement = conn.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        if (resultSet.next()) {
          // Retrieve the values from the result set
          String name = resultSet.getString("name");
          String fatherName = resultSet.getString("father_name");
          String motherName = resultSet.getString("mother_name");
          String email = resultSet.getString("email");
          String gender = resultSet.getString("gender");
          String password = resultSet.getString("password");
          String address = resultSet.getString("address");
          String city = resultSet.getString("city");
          String zipCode = resultSet.getString("zip_code");
          String phoneNo = resultSet.getString("phone_no");
          String courses = resultSet.getString("courses");

    %>
          <p><strong>Name:</strong> <%= name %></p>
          <p><strong>Father's Name:</strong> <%= fatherName %></p>
          <p><strong>Mother's Name:</strong> <%= motherName %></p>
          <p><strong>Email:</strong> <%= email %></p>
          <p><strong>Gender:</strong> <%= gender %></p>
          <p><strong>Password:</strong> <%= password %></p>
          <p><strong>Address:</strong> <%= address %></p>
          <p><strong>City:</strong> <%= city %></p>
          <p><strong>Zip Code:</strong> <%= zipCode %></p>
          <p><strong>Phone No:</strong> <%= phoneNo %></p>
          <p><strong>Courses:</strong> <%= courses %></p>
          <div class="link">
            <p>Go to <a href="home.jsp">Home</a> page</p>
          </div>
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
  </div>
</body>
</html>
