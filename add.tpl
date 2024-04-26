<!DOCTYPE html>
<html>
<head>
    <title>Add Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #282c34; /* Dark background for the page */
            color: #abb2bf; /* Light grey text color for readability */
            padding: 20px;
        }
        h2 {
            color: #61afef; /* Light blue for headings */
        }
        form {
            background-color: #21252b; /* Slightly lighter dark shade for the form background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }
        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 16px;
            background-color: #282c34;
            border: 1px solid #3b4048;
            color: #abb2bf;
            border-radius: 4px;
        }
        button,
        input[type="submit"] {
            background-color: #61afef;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        button:hover,
        input[type="submit"]:hover {
            background-color: #4b76c8;
        }
    </style>
    <script>
        function generatePassword() {
            var length = document.getElementById("length").value;
            fetch("/generate?length=" + length)
                .then(response => response.text())
                .then(data => {
                    document.getElementById("password").value = data;
                });
        }
    </script>
</head>
<body>
    <h2>Add Password</h2>
    <form action="/add" method="post">
        Website: <input type="text" name="website"><br>
        Username: <input type="text" name="username"><br>
        Password: <input type="password" id="password" name="password"><br>
        Password Length: 
        <select id="length">
            <option value="8">8</option>
            <option value="12">12</option>
            <option value="16">16</option>
            <option value="20">20</option>
        </select>
        <button type="button" onclick="generatePassword()">Generate Password</button><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>
