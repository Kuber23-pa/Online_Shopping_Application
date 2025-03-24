<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body,p {
            margin: 0;
            padding: 0;
        }
        
       
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display :grid;
            justify-content: center;
            align-items: center;
          
        }
        
         Container styles 
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 440px;
        }
        
        
        
        p {
           color: #777;
           
        }
    </style>
</head>
<body>
<div class="container">
        <%
            String msg = (String) request.getAttribute("msg");
        %>
        <p><%= msg %></p>
    </div>
    <jsp:include page="Home.html"></jsp:include>

</body>
</html>