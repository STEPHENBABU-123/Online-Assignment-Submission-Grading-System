<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc); /* Gradient background */
        color: white;
        margin: 0;
        padding: 0;
    }
    .navbar {
        background-color: #333;
        overflow: hidden;
        padding: 10px;
        text-align: center;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 14px 20px;
        display: inline-block;
    }
    .navbar a:hover {
        background-color: #575757;
        color: white;
        border-radius: 5px;
    }
    .container {
        width: 400px;
        margin: 100px auto;
        background-color: rgba(255, 255, 255, 0.1); /* Transparent background for form */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    h3 {
        text-align: center;
        color: white;
        font-size: 28px;
        margin-bottom: 20px;
    }
    label {
        font-size: 16px;
        margin-bottom: 8px;
        display: block;
    }
    .form-control {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .form-control:focus {
        outline: none;
        border: 2px solid #2575fc;
        box-shadow: 0 0 10px #2575fc;
    }
    .btn {
        width: 48%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    .btn-success {
        background-color: #28a745;
        color: white;
    }
    .btn-success:hover {
        background-color: #218838;
    }
    .btn-reset {
        background-color: #dc3545;
        color: white;
    }
    .btn-reset:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<div class="navbar">
    <a href="index.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="contact.jsp">Contact</a>
</div>
<h3>Admin Login</h3>
<div class="container">
    <form method="post" action="checkadminlogin">
        <label>Enter Username</label>
        <input type="text" class="form-control" name="auname" placeholder="Username" required />

        <label>Enter Password</label>
        <input type="password" class="form-control" name="apwd" placeholder="Password" required />

        <div style="display: flex; justify-content: space-between;">
            <input type="submit" value="Login" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-reset" />
        </div>
    </form>
</div>
</body>
</html>
