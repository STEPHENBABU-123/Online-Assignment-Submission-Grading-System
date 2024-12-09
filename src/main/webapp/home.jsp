<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Submission and Grading System</title>
    <style>
        /* General Styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4, #fbc2eb);
            color: #2c3e50;
        }
        header, footer {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            text-align: center;
            padding: 20px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
        nav {
            display: flex;
            justify-content: center;
            padding: 15px;
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
        nav a {
            text-decoration: none;
            color: white;
            font-size: 1.2em;
            margin: 0 20px;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        nav a:hover {
            color: #1abc9c;
            transform: scale(1.1);
        }
        h1, h2 {
            font-weight: bold;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 140px 50px;
            background: linear-gradient(to right, #2af598, #009efd);
            color: white;
            animation: fadeIn 2s;
        }
        .hero p {
            max-width: 900px;
            margin: auto;
            font-size: 1.5em;
            line-height: 1.6;
        }
        .hero button {
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            color: white;
            border: none;
            padding: 10px 25px;
            font-size: 1.2em;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
            margin-top: 20px;
        }
        .hero button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 50px 0;
            gap: 30px;
            padding: 20px;
        }
        .feature-card {
            background: linear-gradient(to bottom, #ff9a9e, #fad0c4);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 280px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .feature-card h3 {
            font-size: 1.5em;
            color: #2c3e50;
        }
        .feature-card p {
            font-size: 1.1em;
            color: #555;
        }

        /* Footer */
        footer p {
            font-size: 0.9em;
            margin: 0;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Assignment Submission and Grading System</h1>
        <p>Your one-stop solution for academic assignment management</p>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="/">Home</a>
        <a href="studentreg">Student Registration</a>
        <a href="studentlogin">Student Login</a>
        <a href="facultylogin.jsp">Faculty Login</a>
        <a href="Adminlogin.jsp">Admin Login</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h2>Welcome to the Platform</h2>
        <p>Streamline academic tasks with our user-friendly system. Manage submissions, deadlines, and evaluations seamlessly.</p>
        <button>Learn More</button>
    </section>

    <!-- Features Section -->
    <section>
        <h2 style="text-align: center;">Why Choose Us?</h2>
        <div class="features">
            <div class="feature-card">
                <h3>Easy Submissions</h3>
                <p>Upload assignments effortlessly and track deadlines in one place.</p>
            </div>
            <div class="feature-card">
                <h3>Smart Grading</h3>
                <p>Teachers can evaluate and provide grades with efficiency.</p>
            </div>
            <div class="feature-card">
                <h3>Analytics Dashboard</h3>
                <p>Admins can track submissions and performance metrics in real-time.</p>
            </div>
            <div class="feature-card">
                <h3>Mobile Friendly</h3>
                <p>Access the system seamlessly on all devices.</p>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Assignment Submission and Grading System. All rights reserved.</p>
    </footer>
</body>
</html>
