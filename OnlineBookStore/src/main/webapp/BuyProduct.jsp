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

        p {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
        <h1>Buy Product</h1>
        <p>
            <%
            ProductBean pb = (ProductBean) request.getAttribute("pb");
            CustomerBean cb = (CustomerBean) session.getAttribute("cbean");
            out.println("Page Belongs To: " + cb.getFirstName());
            %>
        </p>
        <form action="billProduct" method="get">
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
                    <td>Stock:</td>
                    <td><%=pb.getQty() %></td>
                </tr>
                <tr>
                    <td>Required Qty:</td>
                    <td><input type="text" name="reqqty"></td>
                    <td><input type="hidden" name="pcode" value="<%=pb.getCode() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Buy Product"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>