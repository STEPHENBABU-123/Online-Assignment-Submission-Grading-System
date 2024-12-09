<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Assignments</title>
    <style>
        /* Basic reset and body styling */
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

        /* Container to hold content */
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 1000px;
            margin: 20px;
        }

        /* Heading and styling */
        h2 {
            color: #4a00e0;
            text-align: center;
            font-size: 28px;
            margin-bottom: 30px;
        }

        /* Table styling */
        table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
            background-color: #fff;
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

        /* Link button styling */
        a {
            text-decoration: none;
            color: #fff;
            background-color: #3498db;
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #2980b9;
        }

        /* Back button styling */
        .back-btn {
            display: inline-block;
            background-color: #d9534f;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
            margin: 20px auto;
            transition: background-color 0.3s;
        }

        .back-btn:hover {
            background-color: #c9302c;
            transform: translateY(-2px);
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                width: 100%;
            }

            h2 {
                font-size: 24px;
            }

            th, td {
                padding: 10px;
            }

            a, .back-btn {
                font-size: 14px;
                padding: 10px 16px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Manage Assignments</h2>

        <!-- Back to Dashboard Button -->
        <div style="text-align: center;">
            <button class="back-btn" onclick="window.location.href='adminhome.jsp'">Back to Dashboard</button>
        </div>

        <!-- Table for displaying assignments -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Due Date</th>
                    <th>Created By</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through assignments -->
                <c:forEach var="assignment" items="${assignments}">
                    <tr>
                        <td>${assignment.id}</td>
                        <td>${assignment.title}</td>
                        <td>${assignment.description}</td>
                        <td>${assignment.dueDate}</td>
                        <td>${assignment.createdBy}</td>
                        <td>
                            <a href="editAssignment?id=${assignment.id}">Edit</a> |
                            <a href="deleteAssignment?id=${assignment.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

</body>
</html>
