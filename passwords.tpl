<!DOCTYPE html>
<html>
<head>
    <title>Passwords</title>
    <style>
        body {
            background-color: #222;
            color: #fff;
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #FFD700; /* Gold */
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #555;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #FFD700; /* Gold */
        }
        tr:nth-child(even) {
            background-color: #444;
        }
        a {
            display: block;
            color: #FFD700; /* Gold */
            text-decoration: none;
            margin-bottom: 10px;
        }
        a:hover {
            color: #fff;
        }
    </style>
</head>
<body>
    <h2>Passwords</h2>
    <table>
        <tr>
            <th>Website</th>
            <th>Username</th>
            <th>Password</th>
        </tr>
        % for row in passwords:
        <tr>
            <td>{{row[1]}}</td>
            <td>{{row[2]}}</td>
            <td>{{row[3]}}</td>
        </tr>
        % end
    </table>
    <a href="/add">Add Password</a>
    <a href="/generate">Generate Password</a>
    <a href="/logout">Logout</a>
</body>
</html>
