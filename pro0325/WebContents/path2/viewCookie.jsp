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
	Cookie[] cookies =request.getCookies();// 클라이언트가 보낸 request에 쿠키가 딸려옴
	if(cookies != null && cookies.length>0){
		for(Cookie cookie:cookies){
			out.print(cookie.getName()+":"+cookie.getValue()+"<br>");
		}
	}
%>
</body>
</html>