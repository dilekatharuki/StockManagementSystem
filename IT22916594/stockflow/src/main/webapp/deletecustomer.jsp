<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Customer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            margin-top: 20px;
        }

        form {
            background-color: #fff;
            border-radius: 5px;
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
        }

        table td {
            padding: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"]:read-only {
            background-color: #eee;
        }

        input[type="submit"] {
            background-color: blue;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; 
        }
    </style>
</head>
<body>
<jsp:include page="navbar2.jsp" />

<%
 String id = request.getParameter("id");
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String phone = request.getParameter("phone");
 String address = request.getParameter("address");

%>
    <h1>Delete Customer Account</h1>
    <form action="delete" method="post">
        <table>
            <tr>
                <td>Customer ID</td>
                <td><input type="text" name="cusid" value="<%= id%>" readonly></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name%>" readonly></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" value="<%= email%>" readonly></td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td><input type="text" name="phone" value="<%= phone%>" readonly></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" value="<%= address%>" readonly></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" value="Delete Customer Details">
    </form>
    <jsp:include page="footer.jsp" />
</body>
</html>
