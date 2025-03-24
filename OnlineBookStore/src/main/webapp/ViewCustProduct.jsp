<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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
        }
        h3 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #0073e6;
        }
        p {
	text-align: center;
	color: gray;
}
    </style>
</head>
<body>
<div class="container">
        <%
        CustomerBean cb = (CustomerBean) session.getAttribute("cbean");
        ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("al");
        if(al.isEmpty())
        {
        %>
        <h3>Page Belongs To: <%= cb.getFirstName() %></h3>
        <p>Products are not available</p>
        <%
        }
        else
        {
        %>
       
        <table>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
            <%
            Iterator<ProductBean> it = al.iterator();
            while (it.hasNext()) {
                ProductBean pb = (ProductBean) it.next();
            %>
            <tr>
                <td><%= pb.getCode() %></td>
                <td><%= pb.getName() %></td>
                <td><%= pb.getPrice() %></td>
                <td><%= pb.getQty() %></td>
                <td>
                    <a href='buyproduct?pcode=<%= pb.getCode() %>'>Buy</a>
                    &nbsp;&nbsp;
                   
                </td>
            </tr>
           <%
            }
           %>
        </table>
        <%
            }
        %>
        <br>
        <br>
        <a href="logout">Logout</a>
    </div>
</body>
</html>