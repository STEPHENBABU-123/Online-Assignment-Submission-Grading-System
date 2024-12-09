<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #333;
        }
        h3 {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #fff;
        }
        .container {
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            max-width: 80%;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            text-align: center;
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #0072ff;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        td {
            font-size: 14px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #fff;
        }
        .btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #ff4b5c;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #d53f4f;
        }
    </style>
</head>
<body>
    <%@include file="adminnav.jsp" %>
    <div class="container">
        <h3>View All Students</h3>
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>EMAIL</th>
            </tr>
            <c:forEach items="${studentlist}" var="student">
                <tr>
                    <td><c:out value="${student.id}"></c:out></td>
                    <td><c:out value="${student.name}"></c:out></td>
                    <td><c:out value="${student.gender}"></c:out></td>
                    <td><c:out value="${student.email}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
        <a href="adminhome.jsp" class="btn">Back to Admin Home</a>
    </div>
    <div class="footer">
        <p>&copy; 2024 Student Management System | All Rights Reserved</p>
    </div>
</body>
</html>
