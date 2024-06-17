<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Enter Customer ID</title>
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
            width: 400px;
            margin: 0 auto;
            padding: 100px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        form input[type="text"] {
            width: 100%;
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
<br>
    <form action="CustomerServlet" method="post">
        User Name <input type="text" name="id" placeholder="Enter ID"><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <br><br><br>
    <jsp:include page="footer.jsp" />
</body>
</html>
