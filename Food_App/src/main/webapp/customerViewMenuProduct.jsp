<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Menu</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://source.unsplash.com/1600x900/?food,restaurant') no-repeat center center fixed;
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
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background: white;
    }
    th, td {
        border: 1px solid black;
        padding: 10px;
        text-align: center;
    }
    th {
        background: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    input[type="checkbox"] {
        transform: scale(1.2);
    }
    input[type="text"] {
        width: 50px;
        text-align: center;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<div class="container">
    <h1>MENU LIST</h1>
    <form action="foodorder">
        <table>
            <tr>
                <th>SNO</th>
                <th>FP_ID</th>
                <th>FP_NAME</th>
                <th>FP_AVAILABILITY</th>
                <th>FP_ABOUT</th>
                <th>FP_PRICE</th>
                <th>FP_TYPE</th>
                <th>ORDER</th>
                <th>QUANTITY</th>
            </tr>
            <%
            int i = 1;
            List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
            for (FoodProduct f : list) {
                if (f.isAvailability()) {
            %>
            <tr>
                <td><%=i++%></td>
                <td><%=f.getId()%></td>
                <td><%=f.getName()%></td>
                <td><%=f.isAvailability()%></td>
                <td><%=f.getAbout()%></td>
                <td><%=f.getPrice()%></td>
                <td><%=f.getType()%></td>
                <td><input type="checkbox" name="fp" value="<%=f.getId()%>"></td>
                <td><input type="text" name="quantity" value="0"></td>
            </tr>
            <%
                }
            }
            %>
        </table>
        <input type="submit" value="ORDER">
        <input type="reset" value="CANCEL">
    </form>
</div>
</body>
</html>
