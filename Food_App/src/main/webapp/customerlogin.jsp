<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://png.pngtree.com/thumb_back/fh260/background/20230716/pngtree-3d-rendering-of-online-food-ordering-and-delivery-app-image_3877884.jpg') no-repeat center center fixed;
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
        border: 2px solid #007bff;
        border-radius: 10px;
        padding: 20px;
        width: 350px;
        text-align: left;
        margin: auto;
    }
    legend {
        font-size: 18px;
        font-weight: bold;
        color: #007bff;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #007bff;
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
        background-color: #0056b3;
    }
    p {
        margin-top: 15px;
    }
    a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <form action="customerlogin">
        <fieldset>
            <legend>Customer Login</legend>
            Username: <input type="email" name="email" required><br>
            Password: <input type="password" name="pass" required><br>

            <input type="submit" value="LOGIN">
            <input type="reset" value="CANCEL">
        </fieldset>
    </form>
    <p>Don't have an account? <a href="customerSignup.jsp">Sign up now</a></p>
</div>

</body>
</html>
