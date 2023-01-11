<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>

	<h1>All Employees</h1>

	
	<table border="1" align="center">
	<tr>
		<th>Employee ID</th>
		<th>Name</th>
		<th>Email-ID</th>
		<th>DateOfBirth</th>
		<th>Age</th>
		<th>Salary</th>
		<th>Status</th>
		<th colspan="2">Actions</th>
	</tr>
	
	<c:forEach var="allEmployees" items="${ msg }">
		<tr>
			<td>${ allEmployees.employeeId }</td>
			<td>${ allEmployees.name }</td>
			<td>${ allEmployees.emailId }</td>
			<td>${ allEmployees.dateOfBirth }</td>
			<td>${ allEmployees.age }</td>
			<td>${ allEmployees.salary }</td>
			<td>${ allEmployees.status }</td>
			<td><a href='./edit/${ allEmployees.employeeId }'>EDIT</a></td>
			<td><a href='./delete?employeeId=${ allEmployees.employeeId }'>DELETE</a></td>
		</tr>
	</c:forEach>
	
	</table>
</body>
</html>