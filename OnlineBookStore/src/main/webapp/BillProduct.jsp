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
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #ffffff;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #007bff;
}

table {
	width: 100%;
}

table tr td {
	padding: 10px;
}

input[type="hidden"] {
	display: none;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
	cursor: pointer;
}

a {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
}

a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
<%
CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
ProductBean pb=(ProductBean)request.getAttribute("pb");
Float totalAmount=(Float)request.getAttribute("totAmt");
int reqQty=(int)request.getAttribute("reqqty");

%>
	<div class="container">
		<h1>Product Bill</h1>
		<form action="payment" method="get">
			<table>
				<tr>
					<td>Code:</td>
					<td><%=pb.getCode() %></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><%=pb.getName() %></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><%=pb.getPrice() %></td>
				</tr>
				<tr>
					<td>Required Quantity:</td>
					<td><%=reqQty %></td>
				</tr>
				<tr>
					<td>Total Billing Amount:</td>
					<td><%=totalAmount %></td>
				</tr>
				<tr>
					<td><input type="hidden" name="reqqty" value=<%=reqQty %>></td>
					<td><input type="hidden" name="pcode" value=<%=pb.getCode() %>></td>
					<td><input type="submit" value="Payment"></td>
					<td><a href="viewCproduct">Back</a></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>