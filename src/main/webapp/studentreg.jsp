<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background: linear-gradient(to bottom right, #6a11cb, #2575fc); color: #fff;">
    <%@include file="navbar.jsp" %>

    <h3 style="text-align: center; margin: 20px 0; font-size: 2em; color: #fff;">Student Registration Form</h3>

    <div class="container" style="max-width: 600px; margin: 0 auto; background: rgba(255, 255, 255, 0.2); padding: 20px; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);">
        <form method="post" action="insertstudent" style="display: flex; flex-direction: column; gap: 15px;">
            
            <!-- Name -->
            <label style="font-size: 1.2em; font-weight: bold;">Enter Name</label>
            <input type="text" name="sname" required 
                   style="padding: 10px; border-radius: 5px; border: none; font-size: 1em; width: 100%; color: black;" />
            
            <!-- Gender -->
            <label style="font-size: 1.2em; font-weight: bold;">Select Gender</label>
            <div style="display: flex; align-items: center; gap: 15px;">
                <label><input type="radio" name="sgender" value="Male" required style="margin-right: 5px;"> Male</label>
                <label><input type="radio" name="sgender" value="Female" required style="margin-right: 5px;"> Female</label>
                <label><input type="radio" name="sgender" value="Others" required style="margin-right: 5px;"> Others</label>
            </div>

            <!-- Email -->
            <label style="font-size: 1.2em; font-weight: bold;">Enter Email ID</label>
            <input type="email" name="semail" required 
                   style="padding: 10px; border-radius: 5px; border: none; font-size: 1em; width: 100%; color: black;" />

            <!-- Password -->
            <label style="font-size: 1.2em; font-weight: bold;">Enter Password</label>
            <input type="password" name="spwd" required 
                   style="padding: 10px; border-radius: 5px; border: none; font-size: 1em; width: 100%; color: black;" />

            <!-- Buttons -->
            <div style="display: flex; justify-content: space-between; margin-top: 20px;">
                <input type="submit" value="Register" 
                       style="padding: 10px 20px; background-color: #28a745; color: #fff; font-size: 1em; border: none; border-radius: 5px; cursor: pointer; transition: background 0.3s ease;" 
                       onmouseover="this.style.backgroundColor='#218838'" 
                       onmouseout="this.style.backgroundColor='#28a745'" />
                <input type="reset" value="Clear" 
                       style="padding: 10px 20px; background-color: #dc3545; color: #fff; font-size: 1em; border: none; border-radius: 5px; cursor: pointer; transition: background 0.3s ease;" 
                       onmouseover="this.style.backgroundColor='#c82333'" 
                       onmouseout="this.style.backgroundColor='#dc3545'" />
            </div>
        </form>
    </div>
</body>
</html>
