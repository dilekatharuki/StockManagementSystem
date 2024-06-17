<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage orders</title>
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
	padding: 10px;
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
</style>

</head>
<body>
	<jsp:include page="navbar2.jsp" />
	<br>
	<br>

	<h2>Order Details</h2>
	<br>
	<br>
	<div class="centered">
		<table>
			<tr>
				<th>ID</th>
				<th>Date</th>
				<th>Total Price</th>
				<th>Status</th>
			</tr>

			<c:forEach items="${odetails}" var="order">
				<c:set var="id" value="${order.id}" />
				<c:set var="date" value="${order.date}" />
				<c:set var="totalPrice" value="${order.totalPrice}" />
				<c:set var="status" value="${order.status}" />
				<tr>
					<td>${order.id}</td>
					<td>${order.date}</td>
					<td>${order.totalPrice}</td>
					<td>${order.status}</td>

				</tr>
			</c:forEach>
		</table>

	</div>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
