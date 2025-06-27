<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css">
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .container {
      max-width: 500px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f1f1f1;
      border-radius: 8px;
    }

    .container h2 {
      text-align: center;
    }

    .input-field {
      margin-bottom: 15px;
    }

    .input-field label {
      display: inline-block;
      width: 30%;
      text-align: right;
      margin-right: 20px;
      font-weight: bold;
    }

    .input-field .icon {
      background: #fcfcfa;
      color: black;
      min-width: 40px;
      border: 2px solid #e2e2e2;
      border-right: none;
      text-align: center;
      padding: 7px;
    }

    .input-field .inputs {
      padding: 3px 10px;
      border: 2px solid #e2e2e2;
      width: 60%;
    }

    .input-field input[type="radio"] {
      margin-right: 5px;
    }

    .button {
      text-align: center;
      margin-top: 20px;
    }

    .button button {
      color: white;
      background: #ee9a25;
      padding: 9px 25px;
      margin-right: 10px;
      border: none;
      border-radius: 5px;
      box-shadow: 0 0 5px #c9c9c9;
      cursor: pointer;
    }

    .button button:hover {
      background: #d1871e;
    }

    .button button[type="reset"] {
      background: #c93232;
    }

    .button button[type="reset"]:hover {
      background: #a32727;
    }

    .success-message {
      text-align: center;
      margin-top: 20px;
      color: green;
      font-weight: bold;
    }

    .error-message {
      text-align: center;
      margin-top: 20px;
      color: red;
      font-weight: bold;
    }
  </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
  <div class="container">
    <h2>Registration Form</h2>
    <form action="addemployee.jsp" method="post">
      <div class="input-field">
        <label for="usrname">Name:</label>
        <i class="fa fa-user icon"></i>
        <input type="text" name="usrname" id="usrname" required>
      </div>
      <div class="input-field">
        <label for="fathername">Father's Name:</label>
        <i class="fa fa-male icon"></i>
        <input type="text" name="fathername" id="fathername" required>
      </div>
      <div class="input-field">
        <label for="mothername">Mother's Name:</label>
        <i class="fa fa-female icon"></i>
        <input type="text" name="mothername" id="mothername" required>
      </div>
      <div class="input-field">
        <label for="email">Email:</label>
        <i class="fa fa-envelope icon"></i>
        <input type="email" name="email" id="email" required>
      </div>
      <div class="input-field">
        <label>Gender:</label>
        <input type="radio" name="gender" value="male" id="gender-male" required>
        <label for="gender-male">Male</label>
        <input type="radio" name="gender" value="female" id="gender-female" required>
        <label for="gender-female">Female</label>
      </div>
      <div class="input-field">
        <label for="password">Password:</label>
        <i class="fa fa-lock icon"></i>
        <input type="password" name="password" id="password" required>
      </div>
      <div class="input-field">
        <label for="address">Address:</label>
        <i class="fa fa-map-marker-alt icon"></i>
        <input type="text" name="address" id="address" required>
      </div>
      <div class="input-field">
        <label for="city">City:</label>
        <i class="fa fa-city icon"></i>
        <input type="text" name="city" id="city" required>
      </div>
      <div class="input-field">
        <label for="zipcode">Zip Code:</label>
        <i class="fa fa-home icon"></i>
        <input type="text" name="zipcode" id="zipcode" required>
      </div>
      <div class="input-field">
        <label for="phoneno">Phone No:</label>
        <i class="fa fa-phone icon"></i>
        <input type="text" name="phoneno" id="phoneno" required>
      </div>
      <div class="input-field">
        <label for="courses">Courses:</label>
        <input type="checkbox" name="courses" value="app-development" id="course-appdev">
        <label for="course-appdev">App Development</label>
        <input type="checkbox" name="courses" value="marketing" id="course-marketing">
        <label for="course-marketing">Marketing</label>
        <input type="checkbox" name="courses" value="editing" id="course-editing">
        <label for="course-editing">Editing</label>
      </div>
      <div class="button">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </div>
    </form>
    <%-- Display success or error message --%>
    <% if (request.getParameter("success") != null) { %>
      <p class="success-message">Registration successful!</p>
    <% } else if (request.getParameter("error") != null) { %>
      <p class="error-message">Registration failed. Please try again.</p>
    <% } %>
  </div>
</body>
</html>
