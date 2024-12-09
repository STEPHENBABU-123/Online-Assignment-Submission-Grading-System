<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Details</title>
    <style>
        /* Basic styling for assignment details */
        .assignment-details {
            padding: 20px;
            border: 1px solid #ddd;
            margin: 20px 0;
        }

        h2 {
            color: #333;
        }

        p {
            font-size: 1.2em;
        }

        a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="assignment-details">
        <h2>Assignment Details</h2>
        <p><strong>File Name:</strong> ${assignment.fileName}</p>
        <p><strong>Comments:</strong> ${assignment.comments}</p>
        <p><strong>Submission Date:</strong> ${assignment.submissionDate}</p>

        <a href="/assignments/download/${assignment.id}">Download Assignment</a>
    </div>
</body>
</html>
