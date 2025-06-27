<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .background-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .box {
            width: 400px;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
        }

        .css-button-rounded--green {
            min-width: 130px;
            height: 40px;
            color: #fff;
            padding: 5px 10px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            outline: none;
            border-radius: 5px;
            border: 2px solid #57cc99;
            background: #57cc99;
        }

        .css-button-rounded--green:hover {
            background: #fff;
            color: #57cc99;
        }
    </style>
</head>
<body>
    <video class="background-video" autoplay loop muted>
        <source src="videos/signup.mp4" type="video/mp4">
        <!-- Add alternative formats here if needed -->
    </video>

    <div class="box">
        <center>
            <h1>Sign up</h1>
            <form method="post" action="registration.jsp">
                <label for="username">Username:</label>
                <input type="text" name="username" id="username" required><br><br>

                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required><br><br>

                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required><br><br>

                <label for="contact">Contact:</label>
                <input type="text" name="contact" id="contact" required><br><br>

                <input type="submit" value="Register" class="css-button-rounded--green">
            </form>

            <p>Already have an account? <a href="login.jsp">Login</a></p>
        </center>
    </div>
</body>
</html>
