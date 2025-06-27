<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
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

        input[type="text"] {
            width: 300px;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #f44336;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <div class="container">
        <h1>Delete Employee</h1>
        <form action="deleteemployee.jsp" method="post">
            <label for="id">Employee ID:</label>
            <input type="text" id="id" name="id" required><br>
            <input type="submit" value="Delete">
        </form>
    </div>
</body>
</html>
