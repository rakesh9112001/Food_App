<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load') no-repeat center center fixed;
        background-size: cover;
        color: #333;
    }

    .container {
        max-width: 500px;
        margin: 50px auto;
        background: rgba(255, 255, 255, 0.9); /* Slightly opaque background */
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }

    form {
        margin: 0 auto;
    }

    fieldset {
        border: none;
        padding: 0;
    }

    legend {
        font-size: 1.8em;
        font-weight: bold;
        margin-bottom: 15px;
        color: #4CAF50;
    }

    label {
        font-size: 1em;
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
        color: #555;
    }

    input[type="text"], input[type="email"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 1em;
        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    input[type="radio"] {
        margin-right: 10px;
    }

    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 12px;
        font-size: 1.1em;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 15px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
    }

    input[type="reset"] {
        background-color: #f44336;
        color: white;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    input[type="reset"]:hover {
        background-color: #e53935;
    }

    p {
        margin-top: 25px;
        font-size: 1em;
        color: #444;
        text-align: center;
    }

    p a {
        color: #007BFF;
        font-weight: bold;
        text-decoration: none;
    }

    p a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <form action="userSignup">
        <fieldset>
            <legend>User Signup</legend>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="pass">Password:</label>
            <input type="password" id="pass" name="pass" required>

            <label>Role:</label>
            <input type="radio" id="admin" name="role" value="admin" required>
            <label for="admin" style="display:inline;">Admin</label>
            <input type="radio" id="branchmanager" name="role" value="branchmanager">
            <label for="branchmanager" style="display:inline;">Branch Manager</label>

            <div style="margin-top: 15px;">
                <input type="submit" value="SIGNUP">
                <input type="reset" value="CANCEL">
            </div>
        </fieldset>
    </form>

    <p>Already having an account as Admin or Branch Manager? <a href="login.jsp">Login Now</a></p>
    <p>Already having an account as staff? <a href="stafflogin.jsp">Login Now</a></p>
    <p>Login as customer? <a href="customerlogin.jsp">Login Now</a></p>
</div>
</body>
</html>
