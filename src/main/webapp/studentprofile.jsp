<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
<!-- Link to the external CSS file -->
<link rel="stylesheet" href="style/studentnav.css">
</head>
<body>
<%@include file="studentnavbar.jsp" %><br/><br/>
<div class="container">
  <h3>My Profile</h3>
  <div class="profile-info">
    <p><strong>ID:</strong> <%= s.getId() %></p>
    <p><strong>Name:</strong> <%= s.getName() %></p>
    <p><strong>Gender:</strong> <%= s.getGender() %></p>
    <p><strong>Email:</strong> <%= s.getEmail() %></p>
  </div>
</div>
</body>
</html>
