<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/originals/4d/67/6d/4d676dd61501d3c9e49d3ddb6c6f2e8a.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    fieldset {
        border: none;
    }
    legend {
        font-size: 1.2em;
        font-weight: bold;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    input[type="submit"], input[type="reset"], button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        margin-top: 10px;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, button:hover {
        background-color: #0056b3;
    }
    a {
        display: inline-block;
        margin-top: 10px;
        text-decoration: none;
    }
</style>
</head>
<body>

<form action="staffLogin">
    <fieldset>
        <legend>STAFF LOGIN</legend>
        Username: <input type="email" name="email" required><br><br>
        Password: <input type="password" name="pass" required><br><br>
        <input type="submit" value="LOGIN">
        <input type="reset" value="CANCEL">
    </fieldset>
</form>

<a href="userSignup.jsp"><button>HOME</button></a>

</body>
</html>
