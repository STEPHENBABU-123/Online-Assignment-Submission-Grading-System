<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4a00e0;
            padding: 10px 20px;
            color: white;
            text-align: center;
            font-size: 20px;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .nav-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .nav-buttons button {
            padding: 12px 20px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .nav-buttons button:hover {
            background-color: #4cae4c;
            transform: translateY(-2px);
        }
        .btn-logout {
            background-color: #d9534f;
        }
        .btn-logout:hover {
            background-color: #c9302c;
        }
        .profile-card, .status-card, .assignment-card {
            background-color: #f9f9f9;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .profile-card h3, .status-card h3, .assignment-card h3 {
            color: #333;
            margin-bottom: 15px;
        }
        .profile-card p, .status-card p {
            margin: 10px 0;
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
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        .progress-bar-container {
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 20px;
            margin-bottom: 30px;
        }
        .progress-bar {
            width: 70%; /* Example progress */
            height: 20px;
            background-color: #4CAF50;
            border-radius: 20px;
        }
        .notification {
            background-color: #ffeb3b;
            padding: 10px;
            margin: 20px 0;
            border-radius: 5px;
            color: #333;
            font-size: 16px;
        }
        .quick-links {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        .quick-links a {
            color: #4a00e0;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
        }
        .quick-links a:hover {
            text-decoration: underline;
        }
        .footer {
            text-align: center;
            margin-top: 40px;
            color: #555;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header>
    <h1>Student Dashboard</h1>
</header>

<div class="container">
    <!-- Navigation Buttons -->
    <div class="nav-buttons">
        <button onclick="window.location.href='viewAssignments.jsp'">View Assignments</button>
        <button onclick="window.location.href='submitAssignment.jsp'">Submit Assignment</button>
        <button onclick="window.location.href='viewSubmissions.jsp'">View Submissions</button>
        <button onclick="window.location.href='viewMessages.jsp'">View Messages</button>
        <button class="btn-logout" onclick="window.location.href='studentlogout.jsp'">Logout</button>
    </div>

    <!-- Profile Information -->
    <div class="profile-card">
        <h3>Profile Information</h3>
        <p><strong>Name:</strong> <c:out value="${student.name}" /></p>
        <p><strong>Email:</strong> <c:out value="${student.email}" /></p>
        <p><strong>Course:</strong> <c:out value="${student.course != null ? student.course : 'JAVA FULL STACK DEVELOPMENT (JFSD)'}" /></p>
    </div>

    <!-- Assignment Status -->
    <div class="status-card">
        <h3>Assignment Progress</h3>
        <div class="progress-bar-container">
            <div class="progress-bar"></div>
        </div>
        <p><strong>Upcoming Assignment:</strong> <c:out value="${nextAssignmentName}" /> (Due: <c:out value="${nextAssignmentDue}" />)</p>
    </div>

    <!-- Notifications -->
    <div class="notification">
        <p>You have <strong><c:out value="${unreadMessages}" /></strong> unread messages.</p>
        <a href="viewMessages.jsp">View Messages</a>
    </div>

    <!-- Upcoming Assignments -->
    <div class="assignment-card">
        <h3>Upcoming Assignments</h3>
        <table>
            <thead>
                <tr>
                    <th>Assignment Name</th>
                    <th>Due Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="assignment" items="${assignments}">
                    <tr>
                        <td><c:out value="${assignment.name}" /></td>
                        <td><c:out value="${assignment.dueDate}" /></td>
                        <td><button onclick="window.location.href='submitAssignment.jsp?id=${assignment.id}'">Submit</button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Recent Submissions -->
    <div class="assignment-card">
        <h3>Recent Submissions</h3>
        <table>
            <thead>
                <tr>
                    <th>Assignment Name</th>
                    <th>Submission Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="submission" items="${submissions}">
                    <tr>
                        <td><c:out value="${submission.assignment.name}" /></td>
                        <td><c:out value="${submission.submissionDate}" /></td>
                        <td><c:out value="${submission.status}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Quick Links -->
    <div class="quick-links">
        <a href="viewAssignments.jsp">View All Assignments</a>
        <a href="viewMessages.jsp">Messages</a>
        <a href="submitAssignment.jsp">Submit Assignment</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Student Dashboard | All Rights Reserved</p>
    </div>
</div>

</body>
</html>
