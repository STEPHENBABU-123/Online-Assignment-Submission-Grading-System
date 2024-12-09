<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Created</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fb;
            text-align: center;
            padding: 20px;
        }
        .message-box {
            margin: 50px auto;
            padding: 20px;
            background-color: #dff0d8;
            color: #3c763d;
            border-radius: 8px;
            width: 50%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #5cb85c;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>Assignment Successfully Created!</h2>
        <p><strong>Title:</strong> ${fAssignment.title}</p>
        <p><strong>Due Date:</strong> ${fAssignment.dueDate}</p>
        <a href="/facultydashboard.jsp" class="btn">Back to Dashboard</a>
    </div>
</body>
</html>
