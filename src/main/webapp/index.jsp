<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login - Index</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #ff7e5f, #feb47b); /* Gradient background */
        margin: 0;
        padding: 0;
        color: white;
    }
    .navbar {
        background-color: #333;
        padding: 15px;
        text-align: center;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 14px 20px;
        font-size: 18px;
        display: inline-block;
    }
    .navbar a:hover {
        background-color: #575757;
        border-radius: 5px;
    }
    .container {
        text-align: center;
        margin-top: 100px;
    }
    .container h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }
    .login-box {
        width: 350px;
        margin: 0 auto;
        padding: 30px;
        background-color: rgba(255, 255, 255, 0.1); /* Transparent background for login box */
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .login-box label {
        font-size: 16px;
        margin-bottom: 10px;
        display: block;
    }
    .login-box input[type="text"], 
    .login-box input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .login-box input[type="text"]:focus, 
    .login-box input[type="password"]:focus {
        outline: none;
        border: 2px solid #ff7e5f;
        box-shadow: 0 0 10px #ff7e5f;
    }
    .login-box button {
        width: 100%;
        padding: 10px;
        background-color: #333;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
    }
    .login-box button:hover {
        background-color: #575757;
    }
    .footer {
        margin-top: 50px;
        text-align: center;
        font-size: 14px;
    }
</style>
</head>
<body>
<div class="navbar">
    <a href="index.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="contact.jsp">Contact</a>
</div>
<div class="container">
    <h1>Admin Login</h1>
    <div class="login-box">
        <form method="post" action="checkadminlogin">
            <label>Username</label>
            <input type="text" name="auname" placeholder="Enter your username" required />
            
            <label>Password</label>
            <input type="password" name="apwd" placeholder="Enter your password" required />
            
            <button type="submit">Login</button>
        </form>
    </div>
</div>
<div class="footer">
    <p>&copy; 2024 Assignment Submission and Grading System</p>
</div>
</body>
</html>
