<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #4e54c8, #8f94fb);
            margin: 0;
            padding: 0;
            color: #333;
        }
        .navbar {
            background-color: #343a40;
            padding: 10px 20px;
            border-bottom: 2px solid #4e54c8;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            margin: 0 15px;
            transition: color 0.3s ease;
        }
        .navbar a:hover {
            color: #8f94fb;
        }
        .container {
            padding: 30px;
            max-width: 1200px;
            margin: 50px auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            color: #4e54c8;
            margin-bottom: 20px;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }
        .card {
            width: 250px;
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }
        .card h3 {
            margin: 10px 0;
            color: #343a40;
        }
        .card p {
            color: #666;
            font-size: 14px;
            margin: 10px 0;
        }
        .card button {
            padding: 10px 15px;
            background-color: #4e54c8;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .card button:hover {
            background-color: #8f94fb;
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
    <h1>Welcome, Admin</h1>

    <div class="card-container">
        <!-- Card 1: View Students -->
        <div class="card">
            <h3>View All Students</h3>
            <p>Manage and review the details of all registered students.</p>
            <button onclick="window.location.href='viewallstudents'">View Students</button>
        </div>

        <!-- Card 2: View Faculty -->
        <div class="card">
            <h3>View All Faculty</h3>
            <p>Manage and review the details of all registered faculty members.</p>
            <button onclick="window.location.href='viewallfaculty'">View Faculty</button>
        </div>

        <!-- Card 3: Faculty Registration -->
        <div class="card">
            <h3>Faculty Registration</h3>
            <p>Register new faculty members for the system.</p>
            <button onclick="window.location.href='facultyreg'">Register Faculty</button>
        </div>

        <!-- Card 4: Assignments -->
        <div class="card">
            <h3>Manage Assignments</h3>
            <p>View, create, and assign assignments for students.</p>
            <button onclick="window.location.href='manageassignments.jsp'">Manage Assignments</button>
        </div>

        <!-- Card 5: Logout -->
        <div class="card">
            <h3>Logout</h3>
            <p>Sign out of the admin dashboard.</p>
            <button onclick="window.location.href='adminlogout.jsp'">Logout</button>
        </div>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 Admin Dashboard | All Rights Reserved</p>
</div>

</body>
</html>
