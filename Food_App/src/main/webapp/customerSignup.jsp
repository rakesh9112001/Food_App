<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Signup</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://blog.tubikstudio.com/wp-content/uploads/2018/04/food-delivery-app-ui-design-tubik-studio-1024x683.jpg') no-repeat center center fixed;
        background-size: cover;
        text-align: center;
        margin: 0;
        padding: 0;
    }
    .container {
        margin-top: 50px;
        background: rgba(255, 255, 255, 0.9);
        display: inline-block;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }
    fieldset {
        border: 2px solid #28a745;
        border-radius: 10px;
        padding: 20px;
        width: 350px;
        text-align: left;
        margin: auto;
    }
    legend {
        font-size: 18px;
        font-weight: bold;
        color: #28a745;
    }
    input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 14px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #218838;
    }
    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="container">
    <form action="customersignup">
        <fieldset>
            <legend>Customer Signup</legend>
            Name: <input type="text" name="name" required><br>
            Email: <input type="email" name="email" required><br>
            Password: <input type="password" name="pass" required><br>
            Mobile: <input type="tel" name="mob" required><br>
            Address: <input type="text" name="address" required><br>

            <input type="submit" value="SIGNUP">
            <input type="reset" value="CANCEL">
        </fieldset>
    </form>
</div>

</body>
</html>
