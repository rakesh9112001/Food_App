<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>    
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('background.jpg') no-repeat center center fixed;
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
    table {
        margin-top: 80px;
        background: rgba(255, 255, 255, 0.9);
        border-collapse: collapse;
        width: 80%;
        text-align: center;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #218838;
    }
    .action-buttons a {
        margin-right: 10px;
    }
    form {
        background: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 50%;
        margin-top: 50px;
    }
    fieldset {
        border: none;
    }
    input[type="text"], input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    input[type="submit"], input[type="reset"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        margin-top: 10px;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="createbranch.jsp"><button>ADD BRANCH</button></a>
    <a href="logout"><button>LOGOUT</button></a>
    <a href="userSignup.jsp"><button>HOME</button></a>
</div>

<%
List<Branch> listOfBranch = (List<Branch>) session.getAttribute("list");
User admin = (User) session.getAttribute("admin");
%>

<h1>Admin ID: <%=admin.getId()%> - LOGIN SUCCESSFUL</h1>

<table>
    <tr>
        <th>S.NO</th>
        <th>B_ID</th>
        <th>B_NAME</th>
        <th>B_ADDRESS</th>
        <th>B_PHONE_NUMBER</th>
        <th>UPDATE</th>
        <th>DELETE</th>
    </tr>
    <%
    int i = 1;
    for (Branch b : listOfBranch) {
    %>
    <tr>
        <td><%=i++%></td>
        <td><%=b.getId()%></td>
        <td><%=b.getBranchname()%></td>
        <td><%=b.getAddress()%></td>
        <td><%=b.getPhonenumber()%></td>
        <td class="action-buttons"><a href="updateBranch.jsp?id=<%=b.getId()%>"><button>UPDATE</button></a></td>
        <td class="action-buttons"><a href="deleteBranch?id=<%=b.getId()%>"><button>DELETE</button></a></td>
    </tr>
    <%
    }
    %>
</table>

<%
String branchId = request.getParameter("id");
Branch branch = null;
if (branchId != null) {
    int id = Integer.parseInt(branchId);
    for (Branch b : listOfBranch) {
        if (b.getId() == id) {
            branch = b;
            break;
        }
    }
}
%>

<form action="updateBranch">
    <fieldset>
        <legend>UPDATE BRANCH</legend>
        ID: <input type="text" name="id" value="<%=branch != null ? branch.getId() : ""%>" readonly>
        Branch Name: <input type="text" name="bn" value="<%=branch != null ? branch.getBranchname() : ""%>">
        Address: <input type="text" name="address" value="<%=branch != null ? branch.getAddress() : ""%>">
        Phone Number: <input type="tel" name="mob" value="<%=branch != null ? branch.getPhonenumber() : ""%>">
        <input type="submit" value="UPDATE BRANCH">
        <input type="reset" value="CANCEL">
    </fieldset>
</form>

</body>
</html>
