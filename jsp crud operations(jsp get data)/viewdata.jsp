<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Employee Details</title>
</head>
<body>
	<h3>Employee Details</h3>
	<%@ page import="java.util.*" %>
	<%@ page import="com.model.*" %>
	<% @SuppressWarnings("unchecked") List<Employee> list = (List<Employee>) request.getAttribute("elist"); %>
	<table border="1">
		<tr>
			<th>EID</th><th>EMP NAME</th>
		</tr>
		<%for (Employee E:list){ %>
			<tr>
				<td> <%=E.getEid() %> </td>
				<td> <%=E.getEname() %>  </td>
			</tr>
		<%} %>
	</table>
</body>
</html>