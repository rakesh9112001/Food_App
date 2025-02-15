<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 0;
        padding: 0;
        background: url('https://cdn-acpjb.nitrocdn.com/irYyICbNUDswnLbvytSBxsDWoEMOWxTr/assets/images/optimized/rev-28cf26c/fooddeliveryguru.com/wp-content/uploads/2018/01/food_delivery_app-768x532.jpg') no-repeat center center fixed;
        background-size: cover;
    }
    .container {
        margin-top: 100px;
        background: rgba(255, 255, 255, 0.8); /* Adding a slight white background to improve readability */
        display: inline-block;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }
    button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin: 10px;
    }
    button:hover {
        background-color: #0056b3;
    }
    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="container">
    <div>
        <a href="navigateToCreatefoodProduct"><button>ADD FOOD PRODUCT</button></a>
    </div>
    <div>
        <a href="findAllFoodProduct"><button>FIND ALL FOOD PRODUCT</button></a>
    </div>
    <div>
        <a href="createstaff.jsp"><button>CREATE STAFF</button></a>
    </div>
    <div>
        <a href="findAllStaff"><button>FIND ALL STAFF</button></a>
    </div>
    <div>
        <a href="logout"><button>LOGOUT</button></a>
    </div>
</div>

</body>
</html>
