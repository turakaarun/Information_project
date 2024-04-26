<!DOCTYPE html>
<html>
<head>
    <title>Generate Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333; /* Dark background for the whole page */
            color: #fff; /* White text color for better readability */
            padding: 20px;
            margin: 0;
        }
        h2 {
            color: #ccc; /* Light grey for heading */
        }
        p {
            background-color: #444; /* Slightly lighter dark shade for the password display */
            padding: 10px;
            border-radius: 5px;
            width: fit-content;
            min-width: 300px; /* Ensures the box is not too narrow */
            text-align: center;
            margin: 20px auto; /* Centering the paragraph */
        }
        a {
            color: #4CAF50; /* A fresh green for links */
            text-decoration: none; /* No underlines on the links */
        }
        a:hover {
            color: #66bb6a; /* Lighter green when hovered */
        }
    </style>
</head>
<body>
    <h2>Generated Password</h2>
    <p>{{password}}</p>
    <a href="/generate?length=8">Generate 8 character password</a><br>
    <a href="/generate?length=12">Generate 12 character password</a><br>
    <a href="/generate?length=16">Generate 16 character password</a><br>
    <a href="/generate?length=20">Generate 20 character password</a><br>
</body>
</html>
