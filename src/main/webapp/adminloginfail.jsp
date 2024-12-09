<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Fail</title>
    <style>
        /* Basic reset and styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 90%;
            max-width: 500px;
        }

        h2 {
            color: #e74c3c;
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            font-weight: bold;
            color: #fff;
            background-color: #3498db;
            padding: 12px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }

        .message {
            font-size: 16px;
            color: #e74c3c;
            margin-bottom: 20px;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                width: 90%;
            }

            h2 {
                font-size: 20px;
            }

            p, a {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Login Failed</h2>
        <p class="message">
            <c:out value="${message}"></c:out>
        </p>
        <a href="Adminlogin">Try Again</a>
    </div>

</body>
</html>
