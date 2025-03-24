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
            margin-top: 100px;
            background-image: url("image/product.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            max-width: 400px;
            margin:200px 5px 10px 800px;
            padding: 20px;
            background-color: rgba(210, 210, 210,0.1);
            /* border:5px solid black; */
            /* box-shadow: 10px 10px ; */
            border-radius: 5px;
            
            /* border: 1px solid #ccc; */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #DFFF00;
            text-align: center;
            font-size: xx-large;
        }
        .navigation {
            margin-top: 20px;
            
        }
        .navigation a {
            text-decoration: none;
            padding: 5px 15px;
            margin-right: 10px;
            background-color: #007bff;
            color: #fff;
            border-radius: 4px;
        }
        .navigation a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
        <%
            String msg = (String) request.getAttribute("msg");
            UserBean ub = (UserBean) session.getAttribute("ubean");
        %>
        <h3><%= msg %><%= ub.getUserName() %></h3>

        <div class="navigation">
            <a href="Productadd.html">Add Product</a>
            <a href="viewProducts">View All Product</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>