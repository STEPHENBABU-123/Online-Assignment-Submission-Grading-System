<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Faculty</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            color: #333;
        }
        .navbar {
            background-color: #343a40;
            padding: 10px 20px;
            border-bottom: 2px solid #6a11cb;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            margin: 0 15px;
            transition: color 0.3s ease;
        }
        .navbar a:hover {
            color: #2575fc;
        }
        .container {
            padding: 30px;
            max-width: 1200px;
            margin: 50px auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        h3 {
            text-align: center;
            color: #6a11cb;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        th, td {
            text-align: center;
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #6a11cb;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #fff;
            font-size: 14px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <a href="adminhome">Home</a>
    <a href="viewallstudents">View All Students</a>
    <a href="viewallfaculty">View All Faculty</a>
    <a href="facultyreg">Faculty Registration</a>
    <a href="logout.jsp">Logout</a>
</div>

<!-- Main Container -->
<div class="container">
    <h3>View All Faculty</h3>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>

        </tr>
        <!-- Iterate through the faculty list using JSTL -->
        <c:forEach items="${facultyList}" var="faculty">
            <tr>
                <td><c:out value="${faculty.id}"/></td>
                <td><c:out value="${faculty.name}"/></td>
                <td><c:out value="${faculty.department}"/></td>
                <td><c:out value="${faculty.email}"/></td>
                
            </tr>
        </c:forEach>
    </table>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 Admin Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
