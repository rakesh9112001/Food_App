<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://image.slidesdocs.com/responsive-images/background/illustrative-3d-render-featuring-a-phone-food-and-an-order-button-ideal-for-promoting-online-food-delivery-services-powerpoint-background_707bc4e388__960_540.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100vh;
    }
    .navbar {
        width: 100%;
        background: rgba(0, 0, 0, 0.7);
        padding: 10px 0;
        text-align: center;
        position: absolute;
        top: 0;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        font-size: 18px;
        margin: 0 15px;
        padding: 8px 15px;
        border-radius: 5px;
    }
    .navbar a:hover {
        background: rgba(255, 255, 255, 0.3);
    }
    form {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px #aaa;
        margin-top: 80px;
    }
    fieldset {
        border: none;
    }
    legend {
        font-size: 20px;
        font-weight: bold;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"], input[type="reset"], button {
        background-color: #28a745;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        margin-top: 10px;
    }
    input[type="reset"] {
        background-color: #dc3545;
    }
    button {
        background-color: #007bff;
    }
    button:hover, input[type="submit"]:hover, input[type="reset"]:hover {
        opacity: 0.8;
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="home.jsp">Home</a>
    <a href="logout.jsp">Logout</a>
</div>

<form action="userlogin">
<fieldset>

<legend>LOGIN PAGE</legend>

<label for="email">Username:</label>
<input type="email" id="email" name="email" required><br>

<label for="pass">Password:</label>
<input type="password" id="pass" name="pass" required><br>

<input type="submit" value="LOGIN">
<input type="reset" value="CANCEL">

</fieldset>
</form>

</body>
</html>
