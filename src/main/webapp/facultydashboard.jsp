<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ff7c7c, #ffb2b2); /* Soft red gradient background */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .navbar {
            background-color: #333;
            width: 100%;
            padding: 12px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            padding: 10px 15px;
            display: inline-block;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .navbar a:hover {
            background-color: #ff7c7c;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            margin-top: 20px;
        }
        .dashboard-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            padding: 25px;
            text-align: center;
            width: 280px;
            height: 350px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .dashboard-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }
        .dashboard-card h4 {
            color: #333;
            font-size: 22px;
            margin-bottom: 15px;
        }
        .dashboard-card p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }
        .dashboard-card button {
            padding: 12px 20px;
            background-color: #ff7c7c;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .dashboard-card button:hover {
            background-color: #ff4d4d;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: white;
            text-align: center;
            font-size: 14px;
        }
        /* Icon for navbar */
        .navbar a i {
            margin-right: 8px;
        }
        /* Icon for cards */
        .dashboard-card .card-icon {
            font-size: 40px;
            color: #ff7c7c;
            margin-bottom: 15px;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
    <!-- Adding Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <a href="facultydashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
    <a href="viewAssignments.jsp"><i class="fas fa-book"></i> Assignments</a>
    <a href="viewSubmissions.jsp"><i class="fas fa-file-alt"></i> Submissions</a>
    <a href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Dashboard Content -->
<div class="container">

    <!-- Faculty Info Card -->
    <div class="dashboard-card">
        <i class="fas fa-user-circle card-icon"></i>
        <h4>Welcome, Professor</h4>
        <p><strong>Name:</strong> <c:out value="${sessionScope.faculty.name}" /></p>
        <p><strong>Email:</strong> <c:out value="${sessionScope.faculty.email}" /></p>
        <button class="btn">Update Profile</button>
    </div>

    <!-- Assignments Card -->
    <div class="dashboard-card">
        <i class="fas fa-pencil-alt card-icon"></i>
        <h4>Assignments</h4>
        <p>Manage and create assignments for students.</p>
        <button class="btn" onclick="window.location.href='createAssignment.jsp'">Create New Assignment</button>
    </div>

    <!-- Submissions Card -->
    <div class="dashboard-card">
        <i class="fas fa-clipboard-list card-icon"></i>
        <h4>Submissions</h4>
        <p>View and grade student submissions.</p>
        <button class="btn" onclick="window.location.href='viewSubmissions.jsp'">View Submissions</button>
    </div>

    <!-- Messages Card -->
    <div class="dashboard-card">
        <i class="fas fa-envelope card-icon"></i>
        <h4>Messages</h4>
        <p>Check your inbox for student queries.</p>
        <button class="btn" onclick="window.location.href='viewMessages.jsp'">View Messages</button>
    </div>

</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 Faculty Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
