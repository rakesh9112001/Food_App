<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRANCH MANAGER DASHBOARD</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('background.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    table {
        width: 100%;
        background: rgba(255, 255, 255, 0.9);
        border-collapse: collapse;
        text-align: center;
    }
    th, td {
        border: 1px solid black;
        padding: 10px;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
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
    a {
        text-decoration: none;
    }
</style>
</head>
<body>

	<%
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>

	<table>
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>CHANGE STATUS</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		int i=1;
		for (FoodProduct f : list) {
		%>

			<tr>
			<td><%=i++ %></td>
			<td><%=f.getId() %></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability() %></td>
			<td><%=f.getAbout() %></td>
			<td><%=f.getPrice() %></td>
			<td><%=f.getType() %></td>
			<td><a href="changeAvailability?id=<%=f.getId()%>"><button>CHANGE STATUS</button></a></td>
			<td><a href="updatefoodproduct.jsp?fpid=<%=f.getId()%>"><button>UPDATE</button></a></td>
			<td><a href="deletefoodproduct?fpid=<%=f.getId()%>"><button>DELETE</button></a></td>
			</tr>
		<%
		}
		%>
	</table>
<a href="createfoodProduct.jsp"><button>ADD FOOD PRODUCT</button></a>
<a href="userSignup.jsp"><button>HOME</button></a>
<a href="logout"><button>LOGOUT</button> </a>

</body>
</html>
