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
    String address = "시흥";
	String name= "윤하원";
	int age=21;
	
%>

나의 주소는 <%= address %> 입니다.<br> <%-- br = 줄바꾸기 브레이크라인 --%>
나의 이름은 <%= name %>입니다. <br> 
나의 나이는 <%= age %>입니다. <br>
</body>
</html>