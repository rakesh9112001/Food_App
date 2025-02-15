<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://source.unsplash.com/1600x900/?restaurant,city') no-repeat center center fixed;
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
    button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 8px 12px;
        cursor: pointer;
        border-radius: 5px;
    }
    button:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<div class="container">
<%
    List<Branch> listOfBranch=(List<Branch>)session.getAttribute("list");
%>
<table>
<tr>
    <th>S.NO</th>
    <th>B_ID</th>
    <th>B_NAME</th>
    <th>B_ADDRESS</th>
    <th>B_PHONE_NUMBER</th>
    <th>SEE MENU</th>
</tr>
<%
    int i=1;
    for(Branch b:listOfBranch)
    {
%>
<tr>
    <td><%=i++%></td>
    <td><%=b.getId()%></td>
    <td><%=b.getBranchname()%></td>
    <td><%=b.getAddress()%></td>
    <td><%=b.getPhonenumber()%></td>
    <td><a href="viewMenu?id=<%=b.getId()%>"><button>MENU</button></a></td>
</tr>
<%} %>
</table>
</div>
</body>
</html>
