<!DOCTYPE html>
<html>
<head>
    <title>Update Employee Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        label {
            display: inline-block;
            width: 120px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 300px;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <div class="container">
        <h1>Welcome to Employee Management System</h1>
        <p>Please update the employee information:</p>
        <form action="updateemployee.jsp" method="post">
            <label for="id">Employee ID:</label>
            <input type="text" id="id" name="id" required><br>
            <label for="usrname">Name:</label>
            <input type="text" id="usrname" name="usrname" required><br>
            <label for="fathername">Father's Name:</label>
            <input type="text" id="fathername" name="fathername" required><br>
            <label for="mothername">Mother's Name:</label>
            <input type="text" id="mothername" name="mothername" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <!-- Add other input fields for address, city, zip_code, phone_no, courses, etc. -->
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
