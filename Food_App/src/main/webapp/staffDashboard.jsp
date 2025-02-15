<%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://i.pinimg.com/736x/4d/67/6d/4d676dd61501d3c9e49d3ddb6c6f2e8a.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        padding: 20px;
    }
    table {
        width: 80%;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background: #007bff;
        color: white;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    button {
        padding: 8px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }
    button:hover {
        opacity: 0.8;
    }
    .update-btn {
        background-color: #ffc107;
        color: white;
    }
    .delete-btn {
        background-color: #dc3545;
        color: white;
    }
    .add-btn {
        background-color: #28a745;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
        display: inline-block;
        margin: 20px;
    }
    .add-btn:hover {
        background-color: #218838;
    }
</style>
</head>
<body>

	<%
	List<User> listOfStaff = (List<User>) session.getAttribute("listOfStaff");
	%>

	<h2>Staff Dashboard</h2>

	<table>
		<tr>
			<th>S.NO</th>
			<th>STAFF_ID</th>
			<th>STAFF_NAME</th>
			<th>STAFF_EMAIL</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		int i = 1;
		for (User u : listOfStaff) {
		%>

		<tr>
			<td><%=i++%></td>
			<td><%=u.getId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getEmail()%></td>
			<td><a href="updateStaff.jsp?id=<%=u.getId()%>"><button class="update-btn">UPDATE</button></a></td>
			<td><a href="deleteStaff?id=<%=u.getId()%>"><button class="delete-btn">DELETE</button></a></td>
		</tr>

		<%
		}
		%>
	</table>

	<a href="createstaff.jsp" class="add-btn">ADD STAFF</a>
	<a href="menu.jsp" class="add-btn">GO TO</a>

</body>
</html>
