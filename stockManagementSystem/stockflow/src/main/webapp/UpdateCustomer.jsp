<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
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
            background-color: #007BFF;
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
<h2>Update Customer Details</h2>

    <form action="update" method="post">
        <table>
            <tr>
                <td>Customer ID</td>
                <td><input type="text" name="cusid" value="<%= id%>" readonly></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name%>"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%= email%>"></td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td><input type="text" name="phone" value="<%= phone%>"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" value="<%= address%>"></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" value="Edit">
    </form>
    <jsp:include page="footer.jsp" />
</body>
</html>
