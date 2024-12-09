<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About Us - Assignment Submission and Grading System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #2b5876, #4e4376);
            color: #fff;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.15);
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2.5em;
        }

        p {
            font-size: 1.2em;
            line-height: 1.8;
            text-align: justify;
        }

        .timeline {
            margin: 40px 0;
            padding-left: 0;
        }

        .timeline li {
            list-style: none;
            margin: 20px 0;
            position: relative;
            padding-left: 40px;
        }

        .timeline li::before {
            content: '';
            position: absolute;
            top: 5px;
            left: 0;
            width: 25px;
            height: 25px;
            background-color: #00aaff;
            border-radius: 50%;
            border: 4px solid #fff;
        }

        .features {
            margin: 30px 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .feature {
            flex: 1 1 calc(33.33% - 20px);
            background-color: rgba(255, 255, 255, 0.2);
            margin: 10px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .feature h3 {
            font-size: 1.5em;
            margin-bottom: 15px;
        }

        .feature p {
            font-size: 1em;
        }

        .cta {
            text-align: center;
            margin: 30px 0;
        }

        .cta a {
            display: inline-block;
            text-decoration: none;
            background-color: #00aaff;
            color: #fff;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 1.2em;
            transition: 0.3s ease;
        }

        .cta a:hover {
            background-color: #0077cc;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Page Title -->
        <h1>About Our System</h1>
        
        <!-- Introductory Text -->
        <p>
            The Assignment Submission and Grading System is an innovative platform designed to streamline the submission and evaluation process for academic assignments. 
            Built with the latest technologies, it bridges the gap between students and teachers, ensuring efficiency, transparency, and productivity in educational institutions.
        </p>
        
        <!-- Timeline Section -->
        <div class="timeline">
            <h2>Our Journey</h2>
            <ul>
                <li>
                    <strong>2023:</strong> Conceptualization of the Assignment Submission and Grading System.
                </li>
                <li>
                    <strong>2024:</strong> Development and deployment of the first version with core features like assignment uploads and grading.
                </li>
                <li>
                    <strong>Future:</strong> Continuous improvement with AI-based grading and integration of analytics to enhance learning outcomes.
                </li>
            </ul>
        </div>

        <!-- Features Section -->
        <div class="features">
            <div class="feature">
                <h3>Seamless Assignment Uploads</h3>
                <p>Students can easily upload their assignments with support for multiple file formats.</p>
            </div>
            <div class="feature">
                <h3>Efficient Grading</h3>
                <p>Teachers can review, grade, and provide feedback on assignments through a user-friendly interface.</p>
            </div>
            <div class="feature">
                <h3>Secure & Transparent</h3>
                <p>Ensures the privacy and security of both student and teacher data with role-based access control.</p>
            </div>
        </div>

        <!-- Call-to-Action -->
        <div class="cta">
            <p>Want to learn more about how our system can benefit your institution?</p>
            <a href="contact.jsp">Get in Touch</a>
        </div>
    </div>
</body>
</html>
