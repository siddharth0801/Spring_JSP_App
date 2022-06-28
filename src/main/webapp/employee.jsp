<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
	<h1>Employee Data</h1>
	<h2>
		<table>
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Skill</td>
			</tr>
			<c:forEach items="${employees}" var="e">
				<tr>
					<td>${e.getId()}</td>
					<td>${e.getName()}</td>
					<td>${e.getSkill()}</td>
				</tr>
			</c:forEach>
		</table>
	</h2>
	<h1>Add Employee</h1>
	<h2>
		<form action="addEmployee" method="POST">

			<label for="Id">Id:</label><br> <input type="text" id="Id"
				name="Id" value=""><br> <label for="name">Name:</label><br>
			<input type="text" id="name" name="name" value=""><br> <label
				for="skill">Skill:</label><br> <input type="text" id="skill"
				name="skill" value=""><br> <br> <input
				type="submit" value="Save">
		</form>
	</h2>
	<br>
	<h1>Delete Employee</h1>
	<h2>
		<form action="deleteEmployee" method="POST">

			<label for="Id">Id:</label><br> <input type="text" name="Id"
				value=""><br> <input type="submit" value="Delete">
		</form>
	</h2>

</body>
</html>