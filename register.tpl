<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            padding: 20px;
        }
        form {
            background-color: #222;
            padding: 20px;
            border-radius: 5px;
        }
        h2 {
            color: #fff;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #aaa;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .generate-password {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h2>Register</h2>
    <form action="/register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
    <!-- <div class="generate-password">
        <button onclick="generatePassword()">Generate Password</button>
        <span id="generated-password"></span>
    </div> -->
    <a href="/">Login</a>

    <script>
        function generatePassword() {
            var passwordLength = 10;
            var charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+~`|}{[]\:;?><,./-=";
            var password = "";
            for (var i = 0; i < passwordLength; i++) {
                var randomIndex = Math.floor(Math.random() * charset.length);
                password += charset[randomIndex];
            }
            // document.getElementById("password").value = password;
            // document.getElementById("generated-password").innerText = "Generated Password: " + password;
        }
    </script>
</body>
</html>
