<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Master Password Login</title>
<style>
    body {
        background-color: #1a1a1a;
        color: #ffffff;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    form {
        background-color: #333333;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        margin-bottom: 20px;
    }
    input[type="password"] {
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 5px;
        background-color: #222222;
        color: #ffffff;
        width: 100%;
    }
    input[type="submit"] {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #ff6600;
        color: #ffffff;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #ff8533;
    }
    a {
        color: #ff6600;
        text-decoration: none;
    }
    a:hover {
        color: #ff8533;
    }
    .footer {
        text-align: center;
    }
</style>
</head>
<body>
<form action="/master_login" method="post">
    <h2>Master Password Login</h2>
    <input type="password" name="password" placeholder="Enter Master Password"><br>
    <input type="submit" value="Login">
</form>
<div class="footer">
    <a href="/">Back to Login</a>
</div>
</body>
</html>
