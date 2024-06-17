<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        table {
            background-color: #fff;
            border-radius: 5px;
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        table td {
            padding: 5px;
        }

        a {
            text-decoration: none;
        }

        input[type="button"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<jsp:include page="navbar2.jsp" /><br><br>
    <table>
        <c:forEach var="cus" items="${cusDetails}">
            <c:set var="id" value="${cus.id}" />
            <c:set var="name" value="${cus.name}" />
            <c:set var="email" value="${cus.email}" />
            <c:set var="phone" value="${cus.phone}" />
            <c:set var="address" value="${cus.address}" />
            <tr>
                <td>Customer ID</td>
                <td>${cus.id}</td>
            </tr>
            <tr>
                <td>Customer Name</td>
                <td>${cus.name}</td>
            </tr>
            <tr>
                <td>Customer Email</td>
                <td>${cus.email}</td>
            </tr>
            <tr>
                <td>Customer Phone</td>
                <td>${cus.phone}</td>
            </tr>
            <tr>
                <td>Customer Address</td>
                <td>${cus.address}</td>
            </tr>
        </c:forEach>
    </table>

    <c:url value="UpdateCustomer.jsp" var="cusUpdate">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="address" value="${address}" />
    </c:url>

    <a href="${cusUpdate}">
    <br>
        <input type="button" name="update" value="Update Customer">
    </a>

    <c:url value="deletecustomer.jsp" var="cusdelete">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="address" value="${address}" />
    </c:url>

    <a href="${cusdelete}">
    
        <input type="button" name="delete" value="Delete Customer">
    </a>
    <br><br><br><br>
      <jsp:include page="footer.jsp" />
</body>
</html>
