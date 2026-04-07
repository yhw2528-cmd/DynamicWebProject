<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("customer") %>님, 
짬뽕을 <%= request.getParameter("amount")%> 그릇 주문하셨군요.맛있게 드세요 <br><hr><br>
<img alt="짬뽕" src="/pro0324/images/짬뽕.webp" width="200" height="200">
</body>
</html>