<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style/facreg.css"/>
    <title>Faculty Registration</title>
</head>

<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background: linear-gradient(to bottom right, #1e3c72, #2a5298); color: #fff; display: flex; justify-content: center; align-items: center; min-height: 100vh;">
    
    <div style="width: 500px; background: rgba(255, 255, 255, 0.1); border-radius: 15px; padding: 30px; box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3); text-align: left;">

        <h3 style="font-size: 2.2em; margin-bottom: 20px; text-align: center; text-transform: uppercase; letter-spacing: 1px; color: #f1f1f1;">Faculty Registration</h3>

        <form method="post" action="insertfaculty" style="display: flex; flex-direction: column; gap: 15px;">
            
            <!-- Name -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Enter Name</label>
                <input type="text" name="fname" required 
                       style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: black;" 
                       onfocus="this.style.borderColor='#4ca1af';" 
                       onblur="this.style.borderColor='#2a5298';" />
            </div>

            <!-- Gender -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Select Gender</label>
                <div style="display: flex; gap: 10px;">
                    <input type="radio" name="fgender" value="Male" required style="accent-color: #4ca1af;" /> Male
                    <input type="radio" name="fgender" value="Female" required style="accent-color: #4ca1af;" /> Female
                    <input type="radio" name="fgender" value="Others" required style="accent-color: #4ca1af;" /> Others
                </div>
            </div>

            <!-- Email -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Enter Email ID</label>
                <input type="email" name="femail" required 
                       style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: black;" 
                       onfocus="this.style.borderColor='#4ca1af';" 
                       onblur="this.style.borderColor='#2a5298';" />
            </div>

            <!-- Password -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Enter Password</label>
                <input type="password" name="fpwd" required 
                       style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: black;" 
                       onfocus="this.style.borderColor='#4ca1af';" 
                       onblur="this.style.borderColor='#2a5298';" />
            </div>

            <!-- Department -->
            <div style="display: flex; flex-direction: column;">
                <label style="font-size: 1.2em; font-weight: bold; margin-bottom: 5px; color: #fff;">Select Department</label>
                <select name="fdept" required 
                        style="padding: 12px; font-size: 1em; border-radius: 10px; border: 2px solid #2a5298; outline: none; transition: 0.3s; background: rgba(255, 255, 255, 0.2); color: black;" 
                        onfocus="this.style.borderColor='#4ca1af';" 
                        onblur="this.style.borderColor='#2a5298';">
                    <option value=" ">Select Branch</option>
                    <option value="Computer Science">Computer Science</option>
                    <option value="Electrical Engineering">Electrical Engineering</option>
                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                    <option value="Civil Engineering">Civil Engineering</option>
                    <option value="Chemical Engineering">Chemical Engineering</option>
                </select>
            </div>

            <div style="text-align: center;">
                <button type="submit" style="padding: 10px 25px; font-size: 1.1em; background: #4ca1af; border: none; color: white; border-radius: 20px; cursor: pointer;">Register</button>
            </div>
        </form>

        <!-- Back Button -->
        <div style="text-align: center; margin-top: 20px;">
            <button onclick="window.location.href='adminhome.jsp'" style="padding: 10px 25px; font-size: 1.1em; background: #e74c3c; border: none; color: white; border-radius: 20px; cursor: pointer;">Back</button>
        </div>

    </div>
</body>
</html>
