<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #56ccf2, #2f80ed); /* Soft gradient background */
        color: white;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.1); /* Transparent background for the container */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 400px;
    }
    .message {
        font-size: 18px;
        margin-bottom: 20px;
    }
    a {
        display: inline-block;
        text-decoration: none;
        color: white;
        background-color: #2f80ed;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #1c63b8;
    }
</style>
</head>
<body>
    <div class="container">
        <p class="message">
            <c:out value="${message}"></c:out>
        </p>
        <a href="studentlogin">Login Here</a>
    </div>
</body>
</html>
