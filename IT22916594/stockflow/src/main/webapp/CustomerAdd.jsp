
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert Customer Information</title>
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

        form input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
  <h2>Add New Customer</h2>
    <form action="insert" method="post">
        Customer_ID <input type="text" name="id" required><br>
        Name <input type="text" name="name" required><br>
        Email <br><input type="email" name="email" required><br>
        PhoneNumber <input type="text" name="phone"required><br>
        Shipping Address <input type="text" name="address" required><br>
        <input type="submit" name="submit" value="Add Customer" required>
    </form>
    <jsp:include page="footer.jsp" />
</body>
</html>
