<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Operation</title>
</head>
<body>
	<h3>Add Employee</h3>
	<form action="SaveEmployee" method="post">
		<p>Employee ID: <input type="text" name="eid" /> </p>
		<p>Employee Name: <input type="text" name="ename" /> </p>
		<input type="submit" value="Save" />
	</form>
</body>
</html>