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
	
	String cookieName= request.getParameter("cookieName"); 
	Cookie[] cookies =request.getCookies();// 클라이언트가 보낸 request에 쿠키가 딸려옴
	if(cookies != null && cookies.length>0){
		for(Cookie cookie:cookies){
			if(cookie.getName().equals(cookieName)){
				cookie.setMaxAge(0); //setMaxAge(초 시간)= 유효단위를 나타내는 함수인데 유효시간을 0으로 해버리면서 삭제
				response.addCookie(cookie);
			}
		}
	}
%>
<%= cookieName %> 쿠키를 삭제하였습니다. <br>
</body>
</html>