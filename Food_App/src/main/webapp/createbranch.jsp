<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://img.pikbest.com/wp/202408/food-app-interface-3d-rendered-for-a-homemade_9839226.jpg!sw800') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100vh;
    }
    .navbar {
        width: 100%;
        background: rgba(0, 0, 0, 0.7);
        padding: 10px;
        text-align: center;
        position: absolute;
        top: 0;
    }
    .navbar button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        cursor: pointer;
    }
    .navbar button:hover {
        background: rgba(255, 255, 255, 0.3);
    }
    .message {
        margin-top: 100px;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .success-button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 15px 20px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 5px;
        cursor: pointer;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .success-button img {
        width: 24px;
        height: 24px;
    }
    .form-container {
        margin-top: 150px;
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    fieldset {
        border: none;
    }
    legend {
        font-size: 20px;
        font-weight: bold;
    }
    input[type="text"], input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"], input[type="reset"], .home-button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        margin-top: 10px;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, .home-button:hover {
        background: rgba(0, 123, 255, 0.8);
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="home.jsp"><button>HOME</button></a>
    <a href="login.jsp"><button>LOGIN</button></a>
    <a href="logout"><button>LOGOUT</button></a>
</div>

<%
User admin = (User) session.getAttribute("admin");
if (admin != null) {
%>
    <div class="message">
        <button class="success-button">
            <img src="green-tick.png" alt="Success">
            Admin login successful!
        </button>
    </div>
    <div class="form-container">
        <form action="createbranch">
            <fieldset>
                <legend>CREATE BRANCH</legend>
                <label>Branch Name:</label>
                <input type="text" name="bn" required><br><br>
                <label>Address:</label>
                <input type="text" name="address" required><br><br>
                <label>Phone Number:</label>
                <input type="tel" name="mob" required><br><br>
                <input type="submit" value="CREATE BRANCH">
                <input type="reset" value="CANCEL">
            </fieldset>
        </form>
    </div>
<%
} else {
    response.getWriter().print("<h1>DO LOGIN FIRST</h1>");
    request.getRequestDispatcher("login.jsp").include(request, response);
}
%>

</body>
</html>
