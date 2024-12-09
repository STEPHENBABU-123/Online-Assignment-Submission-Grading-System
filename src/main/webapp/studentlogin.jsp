<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background: linear-gradient(to bottom right, #1e3c72, #2a5298); color: #fff; display: flex; justify-content: center; align-items: center; min-height: 100vh;">

  
    <div style="width: 500px; background: rgba(255, 255, 255, 0.1); border-radius: 15px; padding: 30px; box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3); text-align: left;">

        <!-- Display Message -->
        <h4 style="color: red; text-align: center; margin-bottom: 20px;">
            <c:out value="${message}"></c:out>
        </h4>

        <!-- Form Heading -->
        <h3 style="font-size: 2.2em; margin-bottom: 20px; text-align: center; text-transform: uppercase; letter-spacing: 1px; color: #f1f1f1;">Student Login</h3>

        <!-- Form -->
        <form method="post" action="checkstudentlogin" style="display: flex; flex-direction: column; gap: 15px;">
            
            <!-- Email -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Enter Email</label>
                <input type="text" name="semail" required 
                       style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: #fff;" 
                       onfocus="this.style.borderColor='#4ca1af';" 
                       onblur="this.style.borderColor='#2a5298';" />
            </div>

            <!-- Password -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Enter Password</label>
                <input type="password" name="spwd" required 
                       style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: #fff;" 
                       onfocus="this.style.borderColor='#4ca1af';" 
                       onblur="this.style.borderColor='#2a5298';" />
            </div>

            <!-- Buttons -->
            <div style="display: flex; gap: 10px; margin-top: 20px;">
                <input type="submit" value="Login" 
                       style="flex: 1; padding: 12px; font-size: 1em; border: none; border-radius: 10px; background: #28a745; color: #fff; cursor: pointer; transition: 0.3s ease; box-shadow: 0px 5px 15px rgba(40, 167, 69, 0.4);" 
                       onmouseover="this.style.backgroundColor='#218838'; this.style.boxShadow='0px 7px 20px rgba(33, 136, 56, 0.5)';" 
                       onmouseout="this.style.backgroundColor='#28a745'; this.style.boxShadow='0px 5px 15px rgba(40, 167, 69, 0.4)';" />
                <input type="reset" value="Clear" 
                       style="flex: 1; padding: 12px; font-size: 1em; border: none; border-radius: 10px; background: #dc3545; color: #fff; cursor: pointer; transition: 0.3s ease; box-shadow: 0px 5px 15px rgba(220, 53, 69, 0.4);" 
                       onmouseover="this.style.backgroundColor='#c82333'; this.style.boxShadow='0px 7px 20px rgba(200, 35, 51, 0.5)';" 
                       onmouseout="this.style.backgroundColor='#dc3545'; this.style.boxShadow='0px 5px 15px rgba(220, 53, 69, 0.4)';" />
            </div>
        </form>
    </div>
</body>
</html>
