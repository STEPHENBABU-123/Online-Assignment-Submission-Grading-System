<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6e7fdb, #4e5ee4); /* Stylish gradient background */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            width: 100%;
            max-width: 420px;
            background-color: white;
            border-radius: 12px;
            padding: 40px 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Shadow effect for card-like appearance */
            text-align: center;
        }
        h3 {
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }
        h4 {
            color: red;
            font-size: 16px;
            margin-bottom: 20px;
        }
        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
            display: block;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 14px;
            border: 2px solid #ddd;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s, background-color 0.3s;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #4e5ee4;
            outline: none;
            background-color: #e8f0fe;
        }
        input[type="submit"], input[type="reset"], .back-btn {
            width: 48%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #4e5ee4;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }
        input[type="submit"]:hover, input[type="reset"]:hover, .back-btn:hover {
            background-color: #3a4bce;
            transform: translateY(-2px); /* Button hover effect */
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 10px;
        }
        .form-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .form-group input {
            width: 48%;
        }
    </style>
</head>
<body>

<h4><c:out value="${message}"></c:out></h4>

<div class="container">
    <h3>Faculty Login Form</h3>

    <form method="post" action="checkfacultylogin">
        <label for="femail">Enter Email</label>
        <input type="text" id="femail" name="femail" required />

        <label for="fpwd">Enter Password</label>
        <input type="password" id="fpwd" name="fpwd" required />

        <div class="btn-container">
            <input type="submit" value="Login" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-reset" />
            <button type="button" class="back-btn" onclick="history.back()">Back</button>
        </div>
    </form>
</div>

</body>
</html>
