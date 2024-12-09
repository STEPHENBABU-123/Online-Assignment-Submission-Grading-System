<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Assignment</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6f42c1, #d3b8e0);
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
            max-width: 600px;
            width: 100%;
        }
        h3 {
            text-align: center;
            color: #333;
        }
        label {
            font-size: 16px;
            margin-bottom: 10px;
            color: #555;
            display: block;
        }
        input[type="text"], textarea, input[type="date"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus, textarea:focus, input[type="date"]:focus {
            border-color: #5cb85c;
            outline: none;
        }
        textarea {
            resize: vertical;
            height: 150px;
        }
        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #5cb85c;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #4cae4c;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
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
    <h3>Create New Assignment</h3>
    <form action="submitAssignment" method="post">

        <label for="assignmentTitle">Assignment Title</label>
        <input type="text" id="assignmentTitle" name="title" required />

        <label for="description">Description</label>
        <textarea id="description" name="description" required></textarea>

        <label for="dueDate">Due Date</label>
        <input type="date" id="dueDate" name="dueDate" required />

        <div class="btn-container">
            <input type="submit" value="Create Assignment" />
            <input type="reset" value="Clear" />
        </div>
    </form>
</div>

<div class="footer">
    <p>&copy; 2024 Faculty Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
