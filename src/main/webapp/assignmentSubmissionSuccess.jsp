<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Submission Successful</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 24px;
            color: #4a00e0;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: 20px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .btn {
            padding: 12px 20px;
            background-color: #4a00e0;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #3700b3;
            transform: translateY(-2px);
        }

        .btn-cancel {
            background-color: #d9534f;
        }

        .btn-cancel:hover {
            background-color: #c9302c;
        }

        .back-btn {
            display: inline-block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            transition: all 0.3s ease;
        }

        .back-btn:hover {
            background-color: #c9302c;
            transform: translateY(-2px);
        }

        .message.success {
            text-align: center;
            padding: 15px;
            font-size: 16px;
            background-color: #d4edda;
            color: #155724;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h2>Assignment Submission Successful</h2>

    <div class="container">
        <div class="message success">
            <p>Your assignment has been successfully submitted!</p>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <button class="btn" onclick="window.location.href='/assignments/view?studentId=${studentId}'">View Assignments</button>
            <button class="back-btn" onclick="window.location.href='studentdashboard.jsp'">Back to Dashboard</button>
        </div>
    </div>

</body>
</html>
