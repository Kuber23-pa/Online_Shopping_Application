<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            background-image: url("image/paymentimg.jpeg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3);
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        p {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }

        a {
            display: inline-block;
            text-align: center;
            text-decoration: none;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            margin-right: 10px;
        }

        a:last-child {
            margin-right: 0;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
        <p>
            <%
            CustomerBean cb = (CustomerBean) session.getAttribute("cbean");
            String msg = (String) request.getAttribute("msg");
            out.println("<h2>Welcome, " + cb.getFirstName() + "!</h2><br>");
            out.println("<p>" + msg + "</p>");
            %>
        </p>
        <a href="viewCproduct">View All Products</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>