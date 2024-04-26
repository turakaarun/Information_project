<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #282c34; /* Darker background */
            color: #c0c0c0; /* Lighter text color for readability */
            text-align: center;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full viewport height */
            display: flex;
            flex-direction: column; /* Arrange items vertically */
            justify-content: center;
            align-items: center; /* Center everything horizontally */
        }
        h2 {
            color: #fff; /* White color for heading */
            text-align: center;
            margin-top: 0; /* Remove default margin */
            margin-bottom: 20px; /* Add some space below */
        }
        .login-form {
            background-color: #20232a; /* Very dark grey background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2); /* Subtle black shadow */
            width: auto;
            display: inline-block;
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            padding: 10px;
            margin: 10px 0; /* Uniform margin for vertical alignment */
            border: 1px solid #444; /* Darker border for input fields */
            background-color: #333; /* Darker background for inputs */
            color: #ddd; /* Light grey text color for inputs */
            border-radius: 4px;
            width: calc(100% - 22px); /* Full width minus padding and border */
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #0062cc; /* Blue background for submit */
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }
        input[type="submit"]:hover {
            background-color: #004085; /* Darker blue on hover */
        }
        input[type="submit"]:active {
            transform: scale(0.95); /* Slight shrink effect on click */
        }
        .register-link {
            color: #61dafb; /* Light blue link color */
            text-decoration: none;
            transition: color 0.3s ease-in-out;
            margin-top: 20px; /* Add space above the link */
        }
        .register-link:hover {
            color: #21a1f1; /* Darker blue on hover */
        }
        table {
            margin-top: 20px; /* Add space above the table */
        }
        table, th, td {
            border: 1px solid #444; /* Darker border for table */
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
        }
        th {
            background-color: #333; /* Darker background for table headers */
            color: #fff; /* White text color for table headers */
        }
    </style>
</head>
<body>
    <h2>Login</h2>
    <div class="login-form">
        <form action="/login" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password"><br>
            <input type="submit" value="Login">
        </form>
        <form action="/master_login" method="post">
            <input type="password" name="password" placeholder="Master Password">
            <input type="submit" value="Master Login">
        </form>
    </div>
    <a class="register-link" href="/register">New User Register</a>
</html>
