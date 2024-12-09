<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #28a745, #a8e063);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
            text-align: center;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        h1 {
            font-size: 28px;
            color: #28a745;
        }
        p {
            font-size: 18px;
            margin: 20px 0;
            color: #333;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn {
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Assignment Successfully Posted!</h1>
        <p>Your assignment titled "<strong>${assignment.title}</strong>" has been successfully created.</p>
        <p>Due Date: <strong>${assignment.dueDate}</strong></p>
        <div class="btn-container">
            <a href="facultydashboard.jsp" class="btn">Go to Dashboard</a>
        </div>
    </div>
</body>
</html>
