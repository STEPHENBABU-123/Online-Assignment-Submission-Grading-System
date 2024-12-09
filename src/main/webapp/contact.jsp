<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - Assignment Submission and Grading System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #6a11cb, #2575fc);
            color: #fff;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2.5em;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-size: 1.2em;
            margin-bottom: 5px;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #00aaff;
            color: #fff;
            font-size: 1.2em;
            cursor: pointer;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0077cc;
        }

        .contact-info {
            text-align: center;
            margin: 20px 0;
        }

        .contact-info h3 {
            margin-bottom: 10px;
        }

        .map-container {
            margin: 30px auto;
            text-align: center;
        }

        iframe {
            width: 100%;
            height: 300px;
            border: none;
            border-radius: 10px;
        }

        .social-media {
            text-align: center;
            margin: 20px 0;
        }

        .social-media a {
            margin: 0 10px;
            color: #fff;
            font-size: 1.5em;
            text-decoration: none;
            transition: 0.3s ease;
        }

        .social-media a:hover {
            color: #00aaff;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Page Title -->
        <h1>Contact Us</h1>
        
        <!-- Contact Form -->
        <form method="post" action="/submitContactForm">
            <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="form-group">
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <label for="message">Your Message</label>
                <textarea id="message" name="message" placeholder="Write your message here..." rows="5" required></textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="Send Message">
            </div>
        </form>
        
        <!-- Contact Information -->
        <div class="contact-info">
            <h3>Contact Information</h3>
            <p>Email: kluniversity.in</p>
            <p>Phone: +91 (555) 123-4567</p>
            <p>Address: Green Fields, Vaddeswaram, Andhra Pradesh 522302</p>
        </div>
        
        <!-- Google Maps Embed -->
        <div class="map-container">
            <h3>Find Us Here</h3>
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3825.1588233545874!2d80.56003051487948!3d16.44168478864415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f5c187762acf%3A0xa0e6a2c054ff2dc6!2sKoneru%20Lakshmaiah%20Education%20Foundation%20(KLEF)%20Deemed%20to%20be%20University!5e0!3m2!1sen!2sin!4v1700000000000!5m2!1sen!2sin" 
                allowfullscreen="" loading="lazy">
            </iframe>
        </div>
        
        <!-- Social Media Links -->
        <div class="social-media">
            <h3>Follow Us</h3>
            <a href="https://www.linkedin.com/school/kluniversity/posts/?feedView=all" target="_blank">Linkdin</a>
            <a href="https://www.facebook.com/KLUniversity/" target="_blank">Facebook</a>
            <a href="https://x.com/KLUniversity?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank">Twitter</a>
            <a href="https://www.instagram.com/kluniversityofficial/?hl=en" target="_blank">Instagram</a>
        </div>
    </div>
</body>
</html>
