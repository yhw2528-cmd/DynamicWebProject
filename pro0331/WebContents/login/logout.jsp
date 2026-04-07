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
	session.removeAttribute("LOGIN"); // 애트리뷰트에 있는 LOGIN을 지우는 것
	//session.invalidate(); //이건 너무 강력함 얘는 애트리뷰트에 있는 걸 다 지우는 것

%>
로그아웃하셨습니다. <br><br>
<a href="login.jsp">로그인하기</a>
</body>
</html>