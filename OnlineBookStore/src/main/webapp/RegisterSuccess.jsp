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
    background-color: #f2f2f2;
    background-image: url("image/CustLoginimg.jpg");
     display: gride;
     justify-content: center;
     align-items: center;
}

.container1 {
     background-color: rgba(210, 210, 210,0.1); /* Adding some transparency to the background */
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.8);
        padding: 20px;
        width: 300px;
        text-align: center;
        height: 50px;
        margin-top: 50px;
}
        
        
        
        p {
           color: white;
           
        }    </style>
</head>
<body>
<div class="container1" style="margin-left: 200px;">
  
        <p>
            <%
               String msg = (String) request.getAttribute("msg");
               out.println(msg); %>
        </p>
        
            <jsp:include page="CustomerLogin.html"></jsp:include>
              <jsp:include page="AdminLogin.html"></jsp:include>
        
        
    </div>
</body>
</html>