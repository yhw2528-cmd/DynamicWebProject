<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("userName","손흥민");//session은 생성 저장 모두 서버 즉 네트워크 이용이 없음 그러므로 한글 바로 처리 가능
	
%>
userName=<%= session.getAttribute("userName") %> <br>
</body>
</html>