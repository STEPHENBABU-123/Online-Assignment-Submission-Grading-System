<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assignments</title>
    <style>
        /* General body and header styles */
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

        /* Table styling */
        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4a00e0;
            color: white;
            font-size: 16px;
        }

        td {
            font-size: 14px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Link styling */
        a {
            text-decoration: none;
            color: #4a00e0;
            font-weight: bold;
            padding: 5px 10px;
            border: 1px solid #4a00e0;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #4a00e0;
            color: white;
        }

        /* Back button styling */
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

        /* Responsive styling */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                padding: 10px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>

    <h2>Assignments</h2>

    <!-- Back to Dashboard Button -->
    <div style="text-align: center;">
        <button class="back-btn" onclick="window.location.href='facultydashboard.jsp'">Back to Dashboard</button>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>File Name</th>
                <th>Comments</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="assignment" items="${assignments}">
                <tr>
                    <td>${assignment.id}</td>
                    <td>${assignment.fileName}</td>
                    <td>${assignment.comments}</td>
                    <td>
                        <a href="/assignments/details/${assignment.id}">View</a> |
                        <a href="/assignments/download/${assignment.id}">Download</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
