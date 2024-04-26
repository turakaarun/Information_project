<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create User</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #333; /* Darker background */
            color: #ccc; /* Lighter text color for better readability */
            padding: 20px;
        }
        h2 {
            color: #fff; /* White color for headings */
        }
        form {
            background: #222; /* Dark theme for the form container */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5); /* Subtle shadow for depth */
        }
        label {
            color: #ccc; /* Light gray for labels */
            display: block; /* Each label on a new line */
            margin-bottom: 5px; /* Space below each label */
        }
        input[type="text"], input[type="password"] {
            width: calc(100% - 22px); /* Full width minus padding and border */
            padding: 10px;
            margin-bottom: 10px; /* Space below each input */
            background: #555; /* Darker background for input fields */
            border: 1px solid #777; /* Slightly lighter border for inputs */
            border-radius: 4px;
            color: #ddd; /* Light color text for inputs */
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Smooth transition for hover effect */
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Create User</h2>
    <form action="/create_user" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <input type="submit" value="Create User">
    </form>
</body>
</html>
