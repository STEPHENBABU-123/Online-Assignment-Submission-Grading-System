<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Assignment</title>
    <style>
        /* Basic styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 24px;
            color: #4a00e0;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: 20px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Form styles */
        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: #4a00e0;
        }

        input[type="file"],
        input[type="text"],
        textarea {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 100%;
        }

        textarea {
            height: 150px;
            resize: vertical;
        }

        /* Button styles */
        .btn {
            padding: 12px 20px;
            background-color: #4a00e0;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #3700b3;
            transform: translateY(-2px);
        }

        .btn-cancel {
            background-color: #d9534f;
        }

        .btn-cancel:hover {
            background-color: #c9302c;
        }

        /* Back to Dashboard Button */
        .back-btn {
            display: inline-block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #d9534f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            transition: all 0.3s ease;
        }

        .back-btn:hover {
            background-color: #c9302c;
            transform: translateY(-2px);
        }

        /* Success/Error message styles */
        .message {
            text-align: center;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
        }

        .message.success {
            background-color: #d4edda;
            color: #155724;
        }

        .message.error {
            background-color: #f8d7da;
            color: #721c24;
        }

    </style>
</head>
<body>

    <h2>Submit Assignment</h2>

    <div class="container">

        <!-- Display success/error message -->
        <c:if test="${not empty successMessage}">
            <div class="message success">${successMessage}</div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="message error">${errorMessage}</div>
        </c:if>

        <!-- Submit Assignment Form -->
        <form action="submitAssignmentAction" method="POST" enctype="multipart/form-data">
            <label for="assignmentTitle">Assignment Title</label>
            <input type="text" id="assignmentTitle" name="assignmentTitle" required placeholder="Enter assignment title">

            <label for="file">Upload File</label>
            <input type="file" id="file" name="file" accept=".docx,.pdf,.jpg,.png" required>

            <label for="comments">Additional Comments (optional)</label>
            <textarea id="comments" name="comments" placeholder="Enter any additional comments (optional)"></textarea>

            <button type="submit" class="btn">Submit Assignment</button>
            <button type="button" class="btn btn-cancel" onclick="window.location.href='studentDashboard.jsp'">Cancel</button>
        </form>

        <!-- Back to Dashboard Button -->
        <div style="text-align: center; margin-top: 20px;">
            <button class="back-btn" onclick="window.location.href='studentdashboard.jsp'">Back to Dashboard</button>
        </div>
    </div>

</body>
</html>
