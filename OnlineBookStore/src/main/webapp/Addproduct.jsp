<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h3 {
            color: #333;
        }
        .message {
            font-size: 18px;
            color: #0073e6;
            margin-bottom: 20px;
        }
        .actions {
            margin-top: 20px;
        }
        .actions a {
            text-decoration: none;
            color: #0073e6;
            margin: 0 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <%
    String msg = (String) request.getAttribute("msg");
    UserBean ub = (UserBean) session.getAttribute("ubean");
    %>
    <h3>Welcome : <%= ub.getFirstName() %></h3>
    <p class="message"><%= msg %></p>
    <div class="actions">
        <a href="viewProducts">View All Products</a>
        <a href="logout">Logout</a>
    </div>
</div>
</body>
</html>