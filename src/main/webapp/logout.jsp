<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h3 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .btn {
            padding: 12px 24px;
            background-color: #ff4b5c;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #d53f4f;
        }
        .footer {
            position: fixed;
            bottom: 10px;
            width: 100%;
            text-align: center;
            color: white;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Successfully Logged Out</h3>
    <p>You have been logged out of your account. Thank you for visiting.</p>
    <form action="facultylogin" method="get">
        <input type="submit" value="Go to Login Page" class="btn"/>
    </form>
    <form action="home.jsp" method="get" style="display: inline;">
        <input type="submit" value="Go to Main Home Page" class="btn"/>
    </form>
</div>

<div class="footer">
    <p>&copy; 2024 Faculty Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
