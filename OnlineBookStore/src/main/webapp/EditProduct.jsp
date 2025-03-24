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
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
        }
        table td {
            padding: 5px;
        }
        input[type="text"] {
            width: 80%;
            padding: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
        <%
            ProductBean pb = (ProductBean) request.getAttribute("pb");
            UserBean ub = (UserBean) session.getAttribute("ubean");
        %>
        <h3>Page Belongs To: <%= ub.getFirstName() %></h3>

        <form action="updateProduct55" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
            <table>
                <tr>
                    <td>Product Price:</td>
                    <td><input type="text" name="price" value="<%= pb.getPrice() %>"></td>
                </tr>
                <tr>
                    <td>Product Quantity:</td>
                    <td><input type="text" name="qty" value="<%= pb.getQty() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>