<%@page import="com.dto.Menu"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Product</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://www.spyne.ai/blogs/wp-content/uploads/2021/09/Rectangle-1-7-1024x576.webp') no-repeat center center fixed;
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
        width: 300px;
        text-align: left;
        margin: auto;
    }
    legend {
        font-size: 18px;
        font-weight: bold;
        color: #007bff;
    }
    input[type="text"], input[type="radio"] {
        margin: 5px 0;
    }
    input[type="submit"], input[type="reset"], button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 14px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin: 5px;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, button:hover {
        background-color: #0056b3;
    }
    a {
        text-decoration: none;
    }
    .logout-btn {
        margin-top: 20px;
    }
</style>
</head>
<body>

<div class="container">
    <form action="createFoodProduct">
        <fieldset>
            <legend>FOOD PRODUCT</legend>
            Name:<br> <input type="text" name="name" required><br><br>
            Type:<br>
            <input type="radio" name="type" value="veg" required> VEG
            <input type="radio" name="type" value="non_veg" required> NON VEG<br><br>
            About:<br> <input type="text" name="about"><br><br>
            Price:<br> <input type="text" name="price" required><br><br>

            <input type="submit" value="CREATE FOOD PRODUCT">
            <input type="reset" value="CANCEL">
        </fieldset>
    </form>

    <div class="logout-btn">
        <a href="logout"><button>LOGOUT</button></a>
    </div>
</div>

</body>
</html>
