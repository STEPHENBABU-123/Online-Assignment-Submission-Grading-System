<!-- submitContactForm.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Message Sent - Assignment Submission and Grading System</title>
    <style>
        /* Style for the success page */
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            text-align: center;
            padding: 50px;
        }
        .success-message {
            background: #4CAF50;
            color: white;
            padding: 20px;
            border-radius: 8px;
            display: inline-block;
            font-size: 1.2em;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background: #2196F3;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        a:hover {
            background: #0b7dda;
        }
    </style>
</head>
<body>
    <div class="success-message">
        <h1>${message}</h1> <!-- Display the success message -->
        <a href="home.jsp">Return to Home</a>
    </div>
</body>
</html>
