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
        background: url('https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=600') no-repeat center center fixed;
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
</style>
</head>
<body>

<div class="navbar">
    <a href="createbranch.jsp"><button>CREATE BRANCH</button></a>
    <a href="findAllBranch"><button>FIND ALL</button></a>
    <a href="logout"><button>ADMIN LOGOUT</button></a>
    <a href="userSignup.jsp"><button>HOME</button></a>
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
<%
} else {
    response.getWriter().print("<h1>DO LOGIN FIRST</h1>");
    request.getRequestDispatcher("login.jsp").include(request, response);
}
%>

</body>
</html>
