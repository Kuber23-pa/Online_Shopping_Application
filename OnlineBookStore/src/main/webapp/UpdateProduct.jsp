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
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
	text-align: center;
	margin-top: 100px;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	border: 1px solid #ccc;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h3 {
	color: #333;
	margin-top: 0;
}

p {
	color: #777;
}

.button-container {
	margin-top: 20px;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border-radius: 4px;
	margin: 0 10px;
	transition: background-color 0.3s;
}

.button:hover {
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
		<h3>
			Welcome :
			<%= ub.getFirstName() %>!
		</h3>
		<p><%= msg %></p>

		<div class="button-container">
			<a href="productadd.html" class="button">Add Product</a> <a
				href="viewProducts" class="button">View All Products</a> <a
				href="logout" class="button">Logout</a>
		</div>
	</div>
</body>
</html>