<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Customers</title>
<style type="text/css">
.centered {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 20px;
	
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 8px;
	text-align: left;
}

th {
	background-color: #007bff;
	color: white;
}

.button-container {
	margin: 10px 0;
	text-align: center;
}

.button-container form {
	display: inline;
}

.button-container button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 16px;
	margin-right: 10px;
}

.button-container button:hover {
	background-color: #0056b3;
}
h2 {
  text-align: center;
}


</style>

</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>
	<br>
	<div class="button-container">
		<form action="CustomerAdd.jsp" method="post">
			<button type="submit" class="add-button">Add Customer</button>
		</form>
		<form action="Customer.jsp" method="post">
			<button type="submit" class="update-button">Update/Delete Customer</button>
		</form>


	</div>
	<br>
	<h2>Customer Details</h2>
	<br>
	<br>
	<div class="centered">
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>PhoneNumber</th>
				<th>Address</th>
			</tr>

			<c:forEach items="${cusdetails}" var="cus">
				<c:set var="id" value="${cus.id}" />
				<c:set var="name" value="${cus.name}" />
				<c:set var="email" value="${cus.email}" />
				<c:set var="phone" value="${cus.phone}" />
				<c:set var="address" value="${cus.address}" />
				<tr>
					<td>${cus.id}</td>
					<td>${cus.name}</td>
					<td>${cus.email}</td>
					<td>${cus.phone}</td>
					<td>${cus.address}</td>

				</tr>
			</c:forEach>
		</table>

	</div>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
