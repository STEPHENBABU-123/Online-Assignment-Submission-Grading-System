<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Submissions</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ff9a8b, #ffc3a0);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            margin-top: 20px;
        }
        h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #ff7c7c;
            color: white;
        }
        tr:hover {
            background-color: #f4f4f4;
        }
        .btn {
            padding: 10px 20px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #4cae4c;
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
    <h3>Student Submissions</h3>
    <table>
        <thead>
            <tr>
                <th>Student Name</th>
                <th>Assignment Title</th>
                <th>Submission Date</th>
                <th>Grade</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="submission" items="${submissions}">
                <tr>
                    <td><c:out value="${submission.studentName}" /></td>
                    <td><c:out value="${submission.assignmentTitle}" /></td>
                    <td><c:out value="${submission.submissionDate}" /></td>
                    <td><c:out value="${submission.grade}" /></td>
                    <td><button class="btn" onclick="window.location.href='gradeSubmission.jsp?id=${submission.id}'">Grade</button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<div class="footer">
    <p>&copy; 2024 Faculty Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
